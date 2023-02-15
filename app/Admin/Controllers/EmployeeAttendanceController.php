<?php

namespace App\Admin\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Models\EmployeeAttendance;
use Encore\Admin\Layout\Content;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use App\Models\AdminUser;

class EmployeeAttendanceController extends Controller
{
    public function index(Content $content, Request $request)
    {
        $date  = $request->date;
        $em_id = $request->employee_id;
        // Query
        if(admin_check()){
            $query = EmployeeAttendance::query();
            if($em_id){
                $query->where('employee_id', $em_id);
            }
            $start_date = date('Y-m-d');
            $end_date   = date('Y-m-d');

        }else{
            $query = EmployeeAttendance::where('employee_id', Admin::user()->id);
            $start_date = date('Y-m-01');
            $end_date   = date('Y-m-t');
        }
        if($date){
            $query->where('date', '>=', $date)->where('date', '<=', $date);
        }else{
            $query->whereRaw("date >= $start_date AND date $end_date");
        }
        // 
        $employees   = AdminUser::where('type', 2)->pluck('full_name', 'id')->toArray();
        $attendances = $query->orderBy('date', 'DESC')->paginate(100)->withQueryString();
                                
        return $content
            ->title('Attendance')
            ->description('List')
            ->view('admin.employee_attendance.list_attendance', compact('employees', 'attendances'));
    }
    public function create(Content $content)
    {
        $employees = AdminUser::where('type', 2)->pluck('full_name', 'id')->toArray();

        return $content
            ->title('Attendance')
            ->description('Create')
            ->view('admin.employee_attendance.add_attendance',compact('employees'));
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'out_time' => 'required|date_format:H:i:s',
            'in_time'  => 'required|date_format:H:i:s',
        ]);
        $date        = $request->input('date')? $request->input('date'): date('Y-m-d');
        $employee_id = $request->input('employee_id');
        // validator
        if($validator->fails()){
            return response()->json(['status' => 0, 'errors' => $validator->errors()], 404);
        }
        else{
            if(admin_check() && empty($employee_id)){
                return response()->json(['status' => 0, 'errors' => ["Select the employee."]], 404);
            }
            $employee_id = $employee_id? $employee_id: Admin::user()->id;
            if(EmployeeAttendance::where(['employee_id' => $employee_id, 'date' => $date])->exists()){
                return response()->json(['status' => 0, 'errors' => ["You have already given attendances."]], 404);
            }
            $in_time     = $request->input('in_time');
            $out_time    = $request->input('out_time');
            $stay_time   = stay_time($in_time, $out_time);
            $status      = $stay_time['hour'] >= "09"? 'P': 'L';
            // Attendance
            $attendance               = new EmployeeAttendance();
            $attendance->date         = $date;
            $attendance->status       = $status;
            $attendance->in_time      = $in_time;
            $attendance->out_time     = $out_time;
            $attendance->stay_time    = $stay_time['time'];
            $attendance->employee_id  = $employee_id? $employee_id: Admin::user()->id;
            $attendance->save();
    
            $message = 'Attendance added successfully';
    
            return response()->json(['status' => 1, 'message' => $message], 200);
        }
    }
    public function edit(Content $content, $id){

        $employee = EmployeeAttendance::find($id);

        return $content
            ->title('Attendance')
            ->description('Edit')
            ->view('admin.employee_attendance.edit_attendance',compact('employee'));
    }
}

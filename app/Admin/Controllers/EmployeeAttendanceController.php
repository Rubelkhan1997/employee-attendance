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
        $name   = $request->name;
        $status = $request->status;
        // Query
        if(in_array("administrator", login_role_slugs()) || in_array("admin", login_role_slugs())){
            $query = EmployeeAttendance::query();
        }else{
            $query = EmployeeAttendance::where('employee_id', Admin::user()->id);
        }
        // 
        $employees = $query->where('date', '>=', date('01-M-Y'))->where('date', '<=', date('t-M-Y'))->orderBy('id', 'DESC')->get();
                                
        return $content
            ->title('Attendance')
            ->description('List')
            ->view('admin.employee_attendance.list_attendance', compact('employees'));
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
        $date        = date('Y-m-d');
        $employee_id = $request->input('employee_id');
        // validator
        if($validator->fails()){
            return response()->json(['status' => 0, 'errors' => $validator->errors()], 404);
        }
        else{
            if((in_array("administrator", login_role_slugs()) || in_array("admin", login_role_slugs())) && empty($employee_id)){
                return response()->json(['status' => 0, 'errors' => ["Select the employee."]], 404);
            }
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

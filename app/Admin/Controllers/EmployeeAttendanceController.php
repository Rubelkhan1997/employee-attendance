<?php

namespace App\Admin\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Models\EmployeeAttendance;
use Encore\Admin\Layout\Content;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;

class EmployeeAttendanceController extends Controller
{
    public function index(Content $content, Request $request)
    {
        // return Admin::user()->roles[0]->slug;
        $name   = $request->name;
        $status = $request->status;
        // Query
        $query = EmployeeAttendance::where('employee_id', Admin::user()->id);
        // Status
        $employees = $query->whereBetween('date', [date('01-M-Y'), date('t-M-Y')])->orderBy('id', 'DESC');
                                
        return $content
            ->title('Attendance')
            ->description('List')
            ->view('admin.employee_attendance.list_attendance',compact('employees'));
    }
    public function create(Content $content)
    {
        return $content
            ->title('Attendance')
            ->description('Create')
            ->view('admin.employee_attendance.add_attendance');
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'out_time' => 'required|date_format:H:i:s',
            'in_time'  => 'required|date_format:H:i:s',
        ]);
        // validator
        if($validator->fails()){
            return response()->json(['status' => 0, 'errors' => $validator->errors()], 404);
        }
        else{
            $date = date('Y-m-d');

            if(EmployeeAttendance::where(['employee_id' => Admin::user()->id, 'date' => $date])->exists()){
                return response()->json(['status' => 0, 'errors' => ["You have already given attendances."]], 404);
            }
            $in_time   = $request->input('in_time');
            $out_time  = $request->input('out_time');
            $stay_time = stay_time($in_time, $out_time);
            $status    =  $stay_time['hour'] >= "09"? 'P': 'L';
            // Attendance
            $attendance               = new EmployeeAttendance();
            $attendance->date         = $date;
            $attendance->status       = $status;
            $attendance->in_time      = $in_time;
            $attendance->out_time     = $out_time;
            $attendance->stay_time    = $stay_time['time'];
            $attendance->employee_id  = Admin::user()->id;
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

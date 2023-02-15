<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\EmployeeAttendance;
use Encore\Admin\Layout\Content;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use App\Models\AdminUser;

class ReportController extends Controller
{
    public function index(Content $content, Request $request)
    {
        $report_type = $request->report_type;
        $employee_id = $request->employee_id? $request->employee_id : Admin::user()->id;
        $report_date = $request->date;


        $employees   = AdminUser::where('type', 2)->pluck('full_name', 'id')->toArray();
        $attendances = [];
        // Filter
        if($report_type && $report_date){
            $report_date = strtotime($report_date);
            $start_date  = date('Y-m-01', $report_date);
            $end_date    = date('Y-m-t', $report_date);
            // Report type
            if($report_type == 1 && $employee_id){
                $attendances = EmployeeAttendance::where('employee_id', $employee_id)->where('date', '>=', $start_date)
                                                ->where('date', '<=', $end_date)
                                                ->orderBy('date', 'ASC')
                                                ->get();
            }
            else if($report_type == 2){
                $query = EmployeeAttendance::with('employee')->where('date', '>=', $start_date)->where('date', '<=', $end_date)->get();
                
                foreach($query as $q){
                    $days[$q->employee_id][] = 1;
                    $stay[$q->employee_id][] = $q->stay_time;

                    $attendances[$q->employee_id] = [
                        'full_name'    => @$q->employee->full_name,
                        'working_days' => count($days[$q->employee_id]),
                        'stay_time'    => $stay[$q->employee_id],
                    ];
                }
            }
        }
        
        return $content
            ->title('Employee')
            ->description('List')
            ->view('admin.report.report',compact('employees', 'attendances'));
    }


}

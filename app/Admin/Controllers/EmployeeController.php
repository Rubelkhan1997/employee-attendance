<?php

namespace App\Admin\Controllers;

use App\Models\EmployeeDetail;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use App\Models\AdminUser;

class EmployeeController extends AdminController
{
    public function index(Content $content)
    {
        $employees = AdminUser::where('type', 2)->paginate(50)->withQueryString();
                                
        return $content
            ->title('Employee')
            ->description('List')
            ->view('admin.employee.list_employee',compact('employees'));
    }
    public function create(Content $content)
    {
        return $content
            ->title('Employee')
            ->description('Create')
            ->view('admin.employee.add_employee');
    }
   

}

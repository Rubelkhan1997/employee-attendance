<?php

namespace App\Admin\Controllers;

use App\Http\Requests\EmployeeRequest;
use App\Http\Controllers\Controller;
use Encore\Admin\Layout\Content;
use App\Models\EmployeeDetail;
use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use App\Models\AdminUser;
use Illuminate\Support\Facades\Hash;

class EmployeeController extends Controller
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
    public function store(EmployeeRequest $request)
    {
        // Image upload
        $new_image = null;
        if($request->hasFile('avatar')){
            if(!in_array($request->avatar->getClientMimeType(), file_mime_type())){
                return response()->json(['success' => 0, 'errors' => ['The file must be a file of type: png, jpeg, JPEG.']], 404);
            }
            $image = time().'.'.$request->avatar->extension();  
            $request->avatar->move(public_path('uploads/images'), $image);    
            $new_image = "images/". $image;
        }
        // 
        if($request->input('id')){
            $employee = AdminUser::find($request->input('id'));
        }else{
            $employee = new AdminUser();
        }
        $employee->full_name  = $request->input('full_name');
        $employee->name       = $request->input('name');
        $employee->email      = $request->input('email');
        $employee->mobile     = $request->input('mobile');
        $employee->password   = Hash::make($request->input('password')) ;
        $employee->avatar     = $new_image;
        $employee->status     = $request->input('status')??0;
        $employee->type       = 2;
        $employee->save();
        // EmployeeDetail
        EmployeeDetail::where('employee_id', $employee->id)->updateOrCreate([
            'photo'       => $new_image, 
            'address'     => $request->input('address'),
            'employee_id' => $employee->id, 
            'district_id' => 0, 
            'upazila_id'  => 0, 
        ]);
       


        
        
       
        
    }
   

}

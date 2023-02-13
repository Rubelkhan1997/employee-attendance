<?php

namespace App\Admin\Controllers;

use App\Http\Requests\EmployeeRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Encore\Admin\Layout\Content;
use App\Models\EmployeeDetail;
// use Encore\Admin\Facades\Admin;
use Illuminate\Http\Request;
use App\Models\EmployeeContact;
use App\Models\AdminUser;

class EmployeeController extends Controller
{
    public function index(Content $content, Request $request)
    {
        $name   = $request->name;
        $status = $request->status;
        // Query
        $query = AdminUser::query();
        // Status
        if($status){
        
            $query->where('status', $status == 2? 0 : 1);
        }
        if($name){
            $query->whereHas('employee_contacts', function($q) use ($name){
                $q->whereRaw("contact_name like '%$name%'");
            });
        }




        $employees = $query->where('type', 2)->orderBy('id', 'DESC')->paginate(100)->withQueryString();
                                
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
        $c_mobile = $request->input('c_mobile');
        $c_email  = $request->input('c_email');
        $c_name   = $request->input('c_name');
        // Check email
        foreach((array) $c_email as $e){
            if(empty($e)){
                return response()->json(['success' => 0, 'errors' => ["Additional contacts field is required."]], 404);
            }
            if (!filter_var($e, FILTER_VALIDATE_EMAIL)) {
                return response()->json(['success' => 0, 'errors' => ["$e is not a valid email address"]], 404);
            }
        }
        // Check mobile
        foreach((array) $c_mobile as $m){
            if(empty($m)){
                return response()->json(['success' => 0, 'errors' => ["Additional contacts field is required."]], 404);
            }
            if(!is_numeric($m) || preg_match('/(01)[0-9]{9}/', $m) == 0){
                return response()->json(['success' => 0, 'errors' => ["$m is not a valid mobile number"]], 404);
            }
        }
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
        ]);
        // Additional
        foreach($c_name as $key =>$n){
            EmployeeContact::where('employee_id', $employee->id)->updateOrCreate([
                'contact_name'  => $n, 
                'employee_id'   => $employee->id, 
                'contact_phone' => @$c_mobile[$key],
                'contact_email' => @$c_email[$key], 
            ]);
        } 

        return response()->json(['success' => 1, 'message' => 'Employee added successfully'], 200);
    }
   

}

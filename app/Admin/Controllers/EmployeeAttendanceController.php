<?php

namespace App\Admin\Controllers;


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
        
        $employees = $query->orderBy('id', 'DESC')->paginate(100)->withQueryString();
                                
        return $content
            ->title('Attendance')
            ->description('List')
            ->view('admin.employee.list_employee',compact('employees'));
    }
    public function create(Content $content)
    {
        return $content
            ->title('Attendance')
            ->description('Create')
            ->view('admin.employee.add_employee');
    }
    public function store(EmployeeRequest $request)
    {
        $c_mobile    = $request->input('c_mobile');
        $c_email     = $request->input('c_email');
        $c_name      = $request->input('c_name');
        $password    = $request->input('password');
        $c_password  = $request->input('c_password');
        $address     = $request->input('address');
        $employee_id = $request->input('id');
        // Password validation 
        $p_validation  = password_validation($employee_id, $password, $c_password);
        if($p_validation['status'] == 0){
            return $p_validation;
        }
        // Check email
        foreach((array) $c_email as $e){
            if(empty($e)){
                return response()->json(['status' => 0, 'errors' => ["Additional contacts field is required."]], 404);
            }
            if (!filter_var($e, FILTER_VALIDATE_EMAIL)) {
                return response()->json(['status' => 0, 'errors' => ["$e is not a valid email address"]], 404);
            }
        }
        // Check mobile
        foreach((array) $c_mobile as $m){
            if(empty($m)){
                return response()->json(['status' => 0, 'errors' => ["Additional contacts field is required."]], 404);
            }
            if(!is_numeric($m) || preg_match('/(01)[0-9]{9}/', $m) == 0){
                return response()->json(['status' => 0, 'errors' => ["$m is not a valid mobile number"]], 404);
            }
        }
        // Image upload
        $new_image = null;
        if($request->hasFile('avatar')){
            if(!in_array($request->avatar->getClientMimeType(), file_mime_type())){
                return response()->json(['status' => 0, 'errors' => ['The file must be a file of type: png, jpeg, JPEG.']], 404);
            }
            $image = time().'.'.$request->avatar->extension();  
            $request->avatar->move(public_path('uploads/images'), $image);    
            $new_image = "images/". $image;
        }
        // 
        if($employee_id){
            $employee  = AdminUser::find($employee_id);
            // Image unlink
            if($employee->avatar && $request->hasFile('avatar') && file_exists(public_path('uploads/').$employee->avatar)){
                unlink(public_path('uploads/'). $employee->avatar);
            }
            $new_image = $request->hasFile('avatar')? $new_image : $employee->avatar;
        }else{
            $employee       = new AdminUser();
            $employee->type = 2;
        }
        if($password){
            $employee->password = Hash::make($password);
        }
        $employee->avatar     = $new_image;
        $employee->full_name  = $request->input('full_name');
        $employee->name       = $request->input('name');
        $employee->email      = $request->input('email');
        $employee->status     = $request->input('status')?? 0;
        $employee->save();
        // EmployeeDetail
        $employee_detail = EmployeeDetail::where('employee_id', $employee->id)->first();
        if(empty($employee_detail)){
            $employee_detail = new EmployeeDetail();
        }
        $employee_detail->photo       = $new_image;
        $employee_detail->address     = $address;
        $employee_detail->employee_id = $employee->id;
        $employee_detail->save();
        // Additional
        $contact_exit_ids = [];
        foreach($c_name as $key =>$n){
            $employee_contact = EmployeeContact::where(['employee_id' => $employee->id, 'contact_phone' => @$c_mobile[$key], 'contact_email' => @$c_email[$key]])->first();
            if(empty($employee_contact)){
                $employee_contact = new EmployeeContact();
            }
            $employee_contact->contact_name  = $n;
            $employee_contact->employee_id   = $employee->id; 
            $employee_contact->contact_phone = @$c_mobile[$key]; 
            $employee_contact->contact_email = @$c_email[$key]; 
            $employee_contact->save();
            // Contact exit ids
            $contact_exit_ids[] = $employee_contact->id;
        } 
        EmployeeContact::where('employee_id', $employee->id)->whereNotIn('id', $contact_exit_ids)->delete();
        // User permission
        if(empty($employee_id)){
            AdminRoleUser::create([
                'role_id' => 3,
                'user_id' => $employee->id,
            ]);
        }

        $message = $employee_id? 'Employee updated successfully': 'Employee added successfully';

        return response()->json(['status' => 1, 'message' => $message], 200);
    }

    public function edit(Content $content, $id){

        $employee = AdminUser::find($id);

        return $content
            ->title('Attendance')
            ->description('Edit')
            ->view('admin.employee.edit_employee',compact('employee'));
    }
}

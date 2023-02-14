<?php
use Encore\Admin\Facades\Admin;

function status($status){
   return $status == 1? 'Active': 'In-Active';
}
function file_mime_type(){
   return array(
      'image/png',
      'image/jpeg',
      'image/JPEG',
      'image/webp',
   );
}
function password_validation($employee_id, $password, $c_password)
{
   if(empty($employee_id)){
      if(empty($password)){
         return ['status' => 0, 'message' => 'The password field is required.']; 
      }
      if(empty($c_password)){
         return ['status' => 0, 'message' => 'The confirm password field is required.']; 
      }
   }
   if($password != $c_password){
      return ['status' => 0, 'message' => 'The confirm password and password must match.'];
   }

   return ['status' => 1, 'message' => 'Success']; 
}
function stay_time($in_time, $out_time){
   $datetime1 = new \DateTime($in_time);
   $datetime2 = new \DateTime($out_time);
   $interval  = $datetime1->diff($datetime2);
   $stay_time = $interval->format('%H:%I:%S');
   $hour      = $interval->format('%H');

   return ['time' => $stay_time, 'hour' => $hour];
}
function admin_slug(){
   return [
      "administrator",
      "admin",
   ];
}
function login_role_slugs(){
   $roles = Admin::user()->roles;
   $slugs = [];
   foreach($roles as $role){
      $slugs[]= $role->slug;
   }
   return $slugs;
}
function admin_check(){
   return in_array("administrator", login_role_slugs()) || in_array("admin", login_role_slugs());
}


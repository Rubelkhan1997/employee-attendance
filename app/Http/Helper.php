<?php

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

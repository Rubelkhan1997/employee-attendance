<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminUser extends Model
{
    use HasFactory;

    protected $table = 'admin_users';

    protected $with = ['employee_details', 'employee_contacts'];


    function employee_details(){
        return $this->belongsTo(EmployeeDetail::class, 'id', 'employee_id');
    }
    function employee_contacts(){
        return $this->hasMany(EmployeeContact::class, 'employee_id');
    }
}

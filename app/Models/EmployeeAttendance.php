<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmployeeAttendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'date',
        'status',
        'in_time',
        'out_time',
        'stay_time',
        'employee_id',
    ];

    function employee(){
        return $this->hasOne(AdminUser::class, 'id', 'employee_id');
    }
}

<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/admin/auth/login');
});

Route::get('/test', function () {


    $stay_times = [
        "09:01",
        "09:01",
        "09:01",
        "09:01",
        "09:01",
        "09:01",
        "09:01",
        "09:01"
    ];

    $total_duration = 0;
   foreach ($stay_times as $stay_time) {
      $total_duration += strtotime($stay_time);
   }

   $total_stay_time   = date('H:i:s', $total_duration);
   $average_stay_time = date('H:i:s', $total_duration / 8);

   return ['total_time' => $total_stay_time, 'average_time' => $average_stay_time];
});

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\fetch_controller;
use App\Http\Controllers\update_pro_name_controller;

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

Route::get('/', [fetch_controller::class,'user_details']);

// Route::get('/check_login', [check_login_controller::class,'check_login'])->middleware(['auth']);

Route::post('/update_pro_name', [update_pro_name_controller::class,'update_pro_name']);

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

Route::view('/dashboard', 'dashboard')->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

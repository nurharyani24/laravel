<?php

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

Route::get('/', function () { // home
    return view('welcome');
});

Route::get('about', function () { // nama permalink
    return view('about'); // nama file di folder views
});

Route::get('pesan', function () { // nama permalink
    return view('pesan'); // nama file di folder views
});

Route::POST('pesan/kirim', function () { // nama permalink. Metodnya diganti karena kita mengambil data dengan method POST
    return view('pesan_kirim'); // nama file di folder views yang akan diakses
});

Route::get('template', function () { // dijalankan url sbg /template
    return view('layouts.master'); // layouts --> folder, master --> nama filenya
});

Route::get('coba1', function () { // dijalankan url sbg /template
    return view('coba1'); // layouts --> folder, master --> nama filenya
});

Route::get('coba2', function () { // dijalankan url sbg /template
    return view('coba2'); // layouts --> folder, master --> nama filenya
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/users/logout', 'Auth\LoginController@userLogout')->name('user.logout');

Route::prefix('admin')->group(function() {
	// controller ada di Auth, nama file AdminLoginController, function showLoginForm
	Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
	Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
	Route::get('/', 'AdminController@index')->name('admin.dashboard');
    Route::post('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

    // Password reset routes
    Route::post('/password/email', 'Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset', 'Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset', 'Auth\AdminResetPasswordController@reset');
    Route::get('/password/reset/{token}', 'Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');
});


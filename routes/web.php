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

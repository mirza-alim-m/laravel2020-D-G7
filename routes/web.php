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
Auth::routes();


Route::middleware('auth')->group(function(){
    Route::get('/', 'HomeController@index')->name('home');
    
    //Kamar
    Route::get('/kamars/index', 'KamarController@index');
    Route::get('/kamars/create', 'KamarController@create');
    Route::get('/kamars/{kamar}', 'KamarController@show');
    Route::post('/kamars', 'KamarController@store');
    Route::delete('/kamars/{kamar}', 'KamarController@destroy');
    Route::get('/kamars/{kamar}/edit', 'KamarController@edit');
    Route::patch('/kamars/{kamar}', 'KamarController@update');
    
    //dokter
    Route::get('/dokter/index', 'DokterController@index');
    Route::get('/dokter/create', 'DokterController@create');
    Route::get('/dokter/{dokter}', 'DokterController@show');
    Route::post('/dokter', 'DokterController@store');
    Route::delete('/dokter/{dokter}', 'DokterController@destroy');
    Route::get('/dokter/{dokter}/edit', 'DokterController@edit');
    Route::patch('/dokter/{dokter}', 'DokterController@update');
    
    
    //pasien
    Route::get('/pasien/index', 'PasienController@index');
    Route::get('/pasien/create', 'PasienController@create');
    Route::get('/pasien/{pasien}', 'PasienController@show');
    Route::post('/pasien', 'PasienController@store');
    Route::delete('/pasien/{pasien}', 'PasienController@destroy');
    Route::get('/pasien/{pasien}/edit', 'PasienController@edit');
    Route::patch('/pasien/{pasien}', 'PasienController@update');
    
    //pegawai
    Route::get('/pegawai/index', 'PegawaiController@index');
    Route::get('/pegawai/create', 'PegawaiController@create');
    Route::get('/pegawai/{pegawai}', 'PegawaiController@show');
    Route::post('/pegawai', 'PegawaiController@store');
    Route::delete('/pegawai/{pegawai}', 'PegawaiController@destroy');
    Route::get('/pegawai/{pegawai}/edit', 'PegawaiController@edit');
    Route::patch('/pegawai/{pegawai}', 'PegawaiController@update');

});
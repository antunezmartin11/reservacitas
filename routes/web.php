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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::middleware(['auth','admin'])->namespace('Admin')->group(function(){

//especialidades
Route::get('/especialidades','SpecialtyController@index');
Route::get('/especialidades/create','SpecialtyController@create');
Route::get('/especialidades/{Specialty}/edit','SpecialtyController@edit');

Route::post('/especialidades','SpecialtyController@store');
Route::put('/especialidades/{Specialty}','SpecialtyController@update');
Route::delete('/especialidad/{Specialty}','SpecialtyController@destroy');

//Doctor
Route::resource('doctors','DoctorController');


//Pacientes
Route::resource('patients','PatientController');
});

Route::middleware(['auth','doctor'])->namespace('Doctor')->group(function(){
    Route::get('/schedule','ScheduleController@edit');
    Route::post('/schedule','ScheduleController@store');
});


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
	$r='tidak';
    return view('test',compact('r'));
});

Route::get('/donation', function () {
	return view('test2');
});

Route::post('/sendmessage','MessageController@add');
Route::post('/senddonasi','DonasiController@add');

// Route::get('/', function () {
//     return Redirect::to('https://www.w3schools.com/php/default.asp');
// });

	
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::group(['middleware' => ['auth']], function() {
	Route::get('/hapus/{id}','DonasiController@hapus');
	Route::get('/ubah/{id}','DonasiController@ubah');
});
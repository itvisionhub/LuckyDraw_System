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
    return view('main');
});
// Route::get('/admin/add-customer', function () {
//     return view('Admin.create_customer');
// });
// // Route::get('/admin/add-prize', function () {
// //     return view('Admin.prize');
// // });
// Route::get('/admin/lucky_draw', function () {
//     return view('Admin.lucky_draw');
// });
Auth::routes();


Route::middleware('admin')->group(function () {
	Route::resource('/admin/prize','PrizeController');
	Route::resource('/admin/customer', 'CustomerController');
	Route::resource('/admin/luckydraw', 'LuckyDrawController');
	Route::resource('/admin/winning_number', 'WinningNumberController');
	Route::get('/admin/prize_winner','PrizeWinnerController@index');
	Route::post('/generate_number','LuckyDrawController@generateNumber');
	Route::get('/generate_number','LuckyDrawController@generateNumber');

	Route::post('/luckyDraw/delete','LuckyDrawController@del');

});



Route::get('/home', 'HomeController@index')->name('home');

Route::get('/logout-manual', function(){
    request()->session()->invalidate();
    return redirect('/');
});

Route::get('/{any}', 'AppController@index')->where('any','.*');

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GeneralController;

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


Route::view('login','login');
Route::post('login','GeneralController@checkLogin');

Route::get('/logout', function () {

    if(session()->has('admin')) {
        session()->pull('admin');
    }
    return redirect('mammaskitchen');
});
                    // ADMIN
Route::view('admin','admin.admin');
Route::get('viewmanager','GeneralController@viewmanager')->name('viewmanager');
Route::get('viewchef','GeneralController@viewchef')->name('viewchef'); 
Route::get('viewwaiter','GeneralController@viewwaiter')->name('viewwaiter');
Route::get('vieworders','GeneralController@vieworders')->name('vieworders');
Route::get('admin','GeneralController@contentdetails')->name('admin');

Route::view('register','admin.managerregistration');
Route::post('register','GeneralController@RegisterManager')->name('register');
Route::get('deletemanager/{id}','GeneralController@DeleteManager')->name('register');
Route::view('updatemanager','admin.managerupdate');
Route::get('updatemanager/{id}','GeneralController@GetManagerID')->name('updatemanager');
Route::post('updatemanager','GeneralController@UpdateManager')->name('updatemanager');

Route::view('chefregistration','admin.chefregistration');
Route::post('chefregistration','GeneralController@RegisterChef')->name('chefregistration');
Route::get('deletechef/{id}','GeneralController@DeleteChef')->name('chefregistration');
Route::view('updatechef','admin.chefupdate')->name('updatechef');
Route::get('updatechef/{id}','GeneralController@GetChefID')->name('updatechef');
Route::post('updatechef','GeneralController@UpdateChef')->name('updatechef');


Route::view('waiterregistration','admin.waiterregistration');
Route::post('waiterregistration','GeneralController@RegisterWaiter')->name('waiterregistration');
Route::get('deletewaiter/{id}','GeneralController@DeleteWaiter')->name('waiterregistration');
Route::view('updatewaiter','admin.waiterupdate')->name('updatewaiter');
Route::get('updatewaiter/{id}','GeneralController@GetWaiterID')->name('updatewaiter');
Route::post('updatewaiter','GeneralController@UpdateWaiter')->name('updatewaiter');

Route::get('addmenu','GeneralController@viewmenu')->name('addmenu1');
Route::post('addmenu','GeneralController@addmenu')->name('addmenu');

Route::view('todaysmenu','admin.todaysmenu')->name('todaysmenu');
Route::get('todaysmenu','GeneralController@todaysmenu')->name('todaysmenu');

Route::get('unavailable/{id}','GeneralController@unavailable')->name('unavailable');
Route::get('available/{id}','GeneralController@available')->name('available');


                    // MANAGER
Route::view('manager','manager.managercontent');
Route::get('manager','ManagerController@managerview'); 
Route::get('paid/{id}','ManagerController@OrderPaid')->name('paid');

Route::view('feedback','manager.feedback');
Route::get('feedback','ManagerController@Viewfeedback')->name('feedback');

Route::view('printbill','manager.managerbill');
Route::get('printbill','ManagerController@index');

                    // Notification(manager)
Route::post('managernotification','ManagerController@NotificationManager')->name('notification');
Route::get('readnotification/{id}','ManagerController@NotificationRead')->name('readnotification');
                    // CHEF
Route::view('chef','chef.chef');
Route::get('chef','ChefController@chefview');

Route::get('deleteorder/{id}','ChefController@CanacelOrder')->name('deleteorder');
Route::get('readchefnotification/{id}','ChefController@NotificationChefRead')->name('readchefnotification');

                    // CUSTOMER
Route::view('mammaskitchen','customer.todaymenu');
Route::get('mammaskitchen','CustomerController@menulist')->name('menulist');
Route::post('feedback','CustomerController@feedback')->name('feedback');

                    //ORDER
Route::view('customerorder','customer.order');
Route::get('customerorder/{item}','CustomerController@OrderItem')->name('customerorder');
Route::post('customerorder','CustomerController@ConfirmOrder')->name('customerorder');
Route::get('vieworder','CustomerController@ViewOrder')->name('vieworder');

Route::get('accepted/{id}','chefController@AcceptOrder')->name('accepted');
Route::get('rejected/{id}','chefController@RejectOrder')->name('rejected');
Route::get('cooked/{id}','chefController@OrderCooked')->name('cooked');
Route::get('served/{id}','chefController@OrderServed')->name('served');
Route::get('remove/{id}','CustomerController@RemoveOrder')->name('remove');

                    //BILL
Route::view('bill','customer.bill')->name('bill');
Route::get('bill','CustomerController@bill')->name('bill');


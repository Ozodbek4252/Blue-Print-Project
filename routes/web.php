<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\MessageController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Livewire\Admin\Dashboard;

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

// Front Routes
Route::get('/', function(){
    return view('front.welcome');
})->name('home');

// Admin Routes
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::middleware(['is_admin'])->group(function(){
        Route::prefix('admin')->group(function () {
            Route::name('admin.')->group(function () {
                Route::get('/dashboard', Dashboard::class)->name('dashboard');
                Route::get('/users', [UserController::class, 'index'])->name('users');
                Route::get('/profile', [ProfileController::class, 'index'])->name('profile');
                Route::controller(MessageController::class)->group(function () {
                    Route::get('/notifications', 'notifications')->name('notifications');
                    Route::get('/notify/{id}', 'notify')->name('notify');
                    Route::get('/markasread/{id}', 'markAsRead')->name('markasread');
                    Route::get('/markallasread', 'markAllAsRead')->name('markallasread');
                });
            });
        });
    });

    

});


Route::fallback(function () {
    return view('admin.components.error404');
});
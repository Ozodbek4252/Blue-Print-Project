<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\MessageController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Front\HomeController;
use App\Http\Livewire\Admin\Dashboard;

// Front Routes
Route::get('/', [HomeController::class, 'index'])->name('home');

// Admin Routes
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::middleware(['is_admin'])->group(function () {
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

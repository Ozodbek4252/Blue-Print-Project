<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(){
        $users = User::where('type', 'user')->paginate(10);
        $num = 0;
        return view("admin.users.index", ['users' => $users, 'num' => $num]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserDashboardController extends Controller
{
    public function index(){
        return view('frontend.dashboard.index');
    }
    public function show(){

        $users=UserDetail::select('id')->get();
       // return  $users;
        return view('frontend.dashboard.component.profile');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\About;
use App\Models\UsService;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index(){
   
    

    $abouts =About::where('status', 1)
    ->orderBy('id', 'desc')
    ->get();

    $services =UsService::where('status', 1)
    ->orderBy('id', 'desc')
    ->get();

    $teams =Team::where('status', 1)
    ->orderBy('id', 'desc')
    ->get();



    return view('frontend.about', compact('abouts','services','teams'));

    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Application;
use Illuminate\Http\Request;
use App\Http\Controllers\ApplicationController;

class ApplicationController extends Controller
{
    
    public function store(Request $request)

    {
        

    $request->validate([
        'name' =>'required',
        'email' => 'required|email|unique:applications,email',
        'subject'=>'required',
        'message'=>'required',
    ]);

    Application::create([
        'name'=>$request->name,
        'email' => $request->email,
        'subject' => $request->subject,
        'message' => $request->message,
    ]);

    return redirect()->back()->with('success', 'Application submitted successfully!');
}
     
}

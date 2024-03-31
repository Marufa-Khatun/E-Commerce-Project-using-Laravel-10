<?php

namespace App\Http\Controllers;

use App\Models\Address;
use Illuminate\Http\Request;
use App\Models\UserApplication;
use App\Http\Requests\ContactRequest;



class ContactController extends Controller
{
    public function index(){


    $contacts =Address::where('status', 1)
    ->orderBy('id', 'desc')
    ->get();
    return view('frontend.contact',compact('contacts'));
}


    
    public function store(ContactRequest $request)

    {
        

        $request->validate([
            
        ]);

    UserApplication::create([
        'name'=>$request->name,
        'email' => $request->email,
        'subject' => $request->subject,
        'message' => $request->message,
       
        
    ]); 

    return redirect()->back()->with('success', 'Application submitted successfully!');
}


    
}

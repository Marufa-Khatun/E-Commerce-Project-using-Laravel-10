<?php

namespace App\Http\Controllers\Backend;

use App\Models\Address;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function index(){
        $contacts = Address::orderBy('id', 'desc')->get();
        return view('backend.contact_us.contact',compact('contacts'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'google_link'=>'required|url',
            'title'=>'required',
            'short_description'=>'required',
            'list_title'=>'required',
            'location'=>'required',
            'open_closes_time'=>'required',
            'email'=>'required',
            'phone'=>'required',
            'touch_title'=>'required',
            'touch_description'=>'required',
        ]);
        
        Address::create([
            "google_link"=>$request->google_link,
            "title"=>$request->title,
            "short_description"=>$request->short_description,
            "list_title"=>$request->list_title,
            "location"=>$request->location,
            "open_closes_time"=>$request->open_closes_time,
            "email"=>$request->email,
            "phone"=>$request->phone,
            "touch_title"=>$request->touch_title,
            "touch_description"=>$request->touch_description,
        ]);
       
        toastr()->closeButton()->addSuccess('Contact Created Successfully');
        return back();
    }
}
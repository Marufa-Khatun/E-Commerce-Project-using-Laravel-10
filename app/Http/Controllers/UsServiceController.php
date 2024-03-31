<?php

namespace App\Http\Controllers;

use App\Models\UsService;
use Illuminate\Http\Request;

class UsServiceController extends Controller
{
    public function index(){
        $services = UsService::orderBy('id', 'desc')->get();
        return view('backend.about-us.service',compact('services'));
       
    }

    public function store(Request $request)
    {
       
            $request->validate([
                'title'=>'required',
                'short_description'=>'required',
            ]); 
    
    
           
             UsService::create([
                "title"                 =>$request->title,
                "short_description"     =>$request->short_description,
                
            ]); 
            toastr()->closeButton()->addSuccess('Services Created Successfully');
            return back();
        }
}

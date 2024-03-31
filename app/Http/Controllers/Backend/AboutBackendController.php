<?php

namespace App\Http\Controllers\Backend;

use App\Models\About;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;


class AboutBackendController extends Controller
{
    public function index(){
        $abouts = About::orderBy('id', 'desc')->get();
        return view('backend.about-us.about',compact('abouts'));
    }
    
    public function store(Request $request)
    {
        $request->validate([
       
            'title1'=>'required',
            'title2'=>'required',
            'short_description'=>'required',
            'experience_years'=>'required',
            'happy_customers'=>'required',
            'client_satisfaction'=>'required',
            'image'=>'nullable|mimes:jpeg,png,jpg|max:1600',
            
        ]);
        $image = $request->file('image');

        if($image){
            $imageName = Str::uuid() .'.'. $image->extension();

            //Storage::putFileAs('category/',$image,$imageName);
            Image::make($image)->resize(1140, 690)->save(public_path('storage/about/'.$imageName), 90);
        }
        else{
            $imageName=null;
        } 

        About::create([
            "title1"=>$request->title1,
            "title2"=>$request->title2,
            "short_description"=>$request->short_description,
            "experience_years"=>$request->experience_years,
            "happy_customers"=>$request->happy_customers,
            "client_satisfaction"=>$request->client_satisfaction,
            "image"=>'storage/about/' . $imageName,
        ]);
        toastr()->closeButton()->addSuccess('About Created Successfully');
        return back();
    }
}

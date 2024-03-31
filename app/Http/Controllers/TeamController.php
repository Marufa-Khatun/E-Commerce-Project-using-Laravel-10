<?php

namespace App\Http\Controllers;

use App\Models\Team;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class TeamController extends Controller
{
    public function index(){
    $teams = Team::orderBy('id', 'desc')->get();
    return view('backend.about-us.team',compact('teams'));
    }

    public function store(Request $request)
    {
        $request->validate([
       
            
            'short_description'=>'required',
            'image'=>'nullable|mimes:jpeg,png,jpg|max:1200',
            'name'=>'required',
            'designation'=>'required',
            
        ]);
        $image = $request->file('image');

        if($image){
            $imageName = Str::uuid() .'.'. $image->extension();

            //Storage::putFileAs('category/',$image,$imageName);
            Image::make($image)->resize(540, 540)->save(public_path('storage/team/'.$imageName), 90);
        }
        else{
            $imageName=null;
        } 

        Team::create([
            
            "short_description"=>$request->short_description,
            "image"=>'storage/team/' . $imageName,
            "name"=>$request->name,
            "designation"=>$request->designation,
        ]);
        toastr()->closeButton()->addSuccess('Team Created Successfully');
        return back();
    }
}

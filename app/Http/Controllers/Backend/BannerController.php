<?php

namespace App\Http\Controllers\Backend;

use App\Models\Banner;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $banners = Banner::orderBy('id', 'desc')->get();
        return view('backend.banner.index',compact('banners'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
       
            $request->validate([
                'title'=>'required',
                'short_description'=>'required',
                'price' =>'required',
                'sale_price'=>'nullable',
                'image'=>'nullable|mimes:png,jpg|max:1000',
                
    
            ]); 
    
    
            $image = $request->file('image');
            
           
            if($image){
                $imageName = Str::uuid() .'.'. $image->extension();
    
                //Storage::putFileAs('banner/',$image,$imageName);
                Image::make($image)->resize(844, 517)->save(public_path('storage/banner/'.$imageName), 90);
               
            }
           
            else{
                $imageName=null;
            }
           
             Banner::create([
                "title"                 =>$request->title,
                "short_description"     =>$request->short_description,
                "price"                 =>$request->price,
                "sale_price"            =>$request->sale_price,
                "image"                 =>'storage/banner/'.$imageName,
            ]); 
            toastr()->closeButton()->addSuccess('Banner Created Successfully');
            return back();
        }
    

    
    
    public function show(Banner $banner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Banner $banner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Banner $banner)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Banner $banner)
    {
        //
    }
}

<?php

namespace App\Http\Controllers\Backend;

use App\Models\Promotion;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class PromotionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $promotions = Promotion::orderBy('id', 'desc')->get();
        return view('backend.promotion.index',compact('promotions'));
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
                'image'=>'nullable|mimes:png,jpg|max:1000',
                
    
            ]); 
    
    
            $image = $request->file('image');
            
           
            if($image){
                $imageName = Str::uuid() .'.'. $image->extension();
    
                //Storage::putFileAs('banner/',$image,$imageName);
                Image::make($image)->crop(200, 256)->save(public_path('storage/promotion/'.$imageName), 90);
               
            }
           
            else{
                $imageName=null;
            }
           
             Promotion::create([
                "title"                 =>$request->title,
                "short_description"     =>$request->short_description,
                "image"                 =>'storage/promotion/'.$imageName,
            ]); 
            toastr()->closeButton()->addSuccess('Promotion Created Successfully');
            return back();
        }
    

    

    /**
     * Display the specified resource.
     */
    public function show(Promotion $promotion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Promotion $promotion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Promotion $promotions)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Promotion $promotions)
    {
        //
    }
}

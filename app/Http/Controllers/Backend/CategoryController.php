<?php

namespace App\Http\Controllers\Backend;

use App\Models\category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Intervention\Image\File;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
     public function __construct(){
        $this->middleware('role_or_permission:super-admin|view category',['only'=>['index','show']]);
        $this->middleware('role_or_permission:super-admin|create category',['only'=>['create','store']]);
        $this->middleware('role_or_permission:super-admin|edit category',['only'=>['edit','update','index','show']]);
        $this->middleware('role_or_permission:super-admin|delete category',['only'=>['destroy']]);
    } 


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::query();
        $allCategories = $categories->withCount('products')->paginate(5);
        $selectCategories = $categories->get();
        return view('backend.category.index', compact('allCategories','selectCategories'));
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
            'name'=>'required|unique:categories,name',
            'description'=>'nullable|max:300',
            'image'=>'nullable|mimes:png,jpg|max:512',
        ]);
        $image = $request->file('image');

        if($image){
            $imageName = Str::uuid() .'.'. $image->extension();

            //Storage::putFileAs('category/',$image,$imageName);
            Image::make($image)->crop(200, 256)->save(public_path('storage/category/'.$imageName), 90);
        }
        else{
            $imageName=null;
        }

        Category::create([
            "name"          =>$request->name,
            "slug"          =>Str::slug($request->name),
            "description"   =>$request->description,
            "parent_id"     =>$request->parent,
            "image"         =>'storage/category/'.$imageName,
        ]);
        toastr()->closeButton()->addSuccess('Category Created Successfully');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(category $category)
    {
        $categories = Category::query();
        $selectCategories = $categories->get();
        return view('backend.category.show', compact('selectCategories'));
       
    }
    

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(category $category)
    {
        $categories = Category::query();
        $image = $category->image;
        $selectCategories = $categories->get();
        $parentCategory= $categories->find($category->parent_id);
        return view('backend.category.edit',compact('category','selectCategories','parentCategory','image'));

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, category $category)
    {
        $image = $request->file('image');
        $imageName = null;
        $request->validate([
            'name'=>'required|unique:categories,name',
            'description'=>'nullable|max:300',
            'image'=>'nullable|mimes:png,jpg|max:512',
        ]);
        
        $preImage = $category->image;
        if($image){
            if($preImage){
                $path =public_path('storage/category/'.$preImage);
                if(file_exists($path)){
                    unlink($path);
                }
            }
            $imageName = Str::uuid() .'.'. $image->extension();

            //Storage::putFileAs('category/',$image,$imageName);
            Image::make($image)->crop(200, 256)->save(public_path('storage/category/'.$imageName), 90);
        }
        else{
            $imageName=$category->image;
        }
        $category->update([
            "name"          =>$request->name,
            "parent_id"     =>$request->parent_id,
            "slug"          =>Str::slug($request->name),
            "description"   =>$request->description,
            "image"         => $imageName ,
        ]);
        toastr()->closeButton()->addSuccess('Category Updated Successfully');
        return back();
        }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(category $category)
    {
        $preImage = $category->image;
        if($preImage){
            $path =public_path('storage/category/'.$preImage);
                if(file_exists($path))
                {
                unlink($path);
                }
        }
        $category->delete();
        return back();
    }
}

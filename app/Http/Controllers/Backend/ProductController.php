<?php

namespace App\Http\Controllers\Backend;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\ProductGallery;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products=Product::where('status', 1)->with('categories')->orderBy('id', 'desc')->paginate(5);
        return view('backend.product.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::get();
        return view('backend.product.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
      $product_images = $request->product_gallery;
   
        $request->validate([  
        "title"       => 'required|unique:products,title',
        "category_id"=> 'required',
        "price"      => 'required',
        "sale_price" => 'nullable',
        "short_description"=> 'nullable|max:500',
        "description"=> 'nullable|max:2000',
        "add_info"   => 'nullable',
        "product_gallery.*"   =>'nullable|mimes:png,jpg,jpeg,svg|max:1024',
        ]);

        $product = Product::create($request->all());
        $product ->categories()->attach($request->category_id); 

        $product_gallery = [];

        if($product_images){
            foreach($product_images as $image)
            {
                $imageName = Str::uuid() .'.'. $image->extension();
                Image::make($image)->resize(680,680)->save(public_path('storage/products/'.$imageName),90);
                
                $product_gallery[] =[
                    'product_id'=> $product->id,
                    'image_path'=> 'storage/products/'.$imageName,
                    'image_name'=> $imageName,
                ];
            }
            ProductGallery::insert($product_gallery);
        }
        

        toastr()->closeButton()->addSuccess('Product Created Successfully');
        return redirect()->route('backend.productmanagement.product.index');
    }
    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
       
        return view('backend.product.show',compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
       $categories= Category::all();
       return view('backend.product.edit',compact('product','categories'));
    }
    

    /**
     * Update the specified resource in storage.
     */
   public function update(Request $request, Product $product)
    {
        $request->validate([  
            "title"       => 'required',
            "category_id"=> 'required',
            "price"      => 'required',
            "sale_price" => 'nullable',
            "short_description"=> 'nullable|max:500',
            "description"=> 'nullable|max:2000',
            "add_info"   => 'nullable',
            ]);
    
            $product->update([
                "title"             => $request->title,
                "category_id"       => $request->category_id,
                "price"             => $request->price,
                "sale_price"        => $request->sale_price,
                "short_description" => $request->short_description,
                "description"       => $request->description,
                "add_info"          => $request->add_info,
            ]);
            $product ->categories()->sync($request->category_id);
           
            toastr()->closeButton()->addSuccess('Product Updated Successfully');
            return redirect()->route('backend.productmanagement.product.index');
        }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
       /*  $product->categories()->detach(); */
        $product->delete();
        toastr()->closeButton()->addSuccess('Product Deleted Successfully');
        return back();
    }

    /**
     *Display trash data prduct
     */
    public function productTrashList()
    {
     
        $products=Product::onlyTrashed()->with('categories')->orderBy('id', 'desc')->paginate(5);
        return view('backend.product.trash',compact('products'));
    }
    /**
     *Display trash data prduct
     */
    public function productTrashRestore($id)
    {
        $product =Product::onlyTrashed()->find($id);
        $product->restore();
        toastr()->closeButton()->addSuccess('Product Restore Successfully');
        return back();
    }
      /**
     *Display trash data prduct
     */
    public function productTrashDelete($id)
    {
        $product =Product::onlyTrashed()->find($id); 
        $product -> forceDelete();
        $productGallery = ProductGallery::where('Product_id',$id)->get();

        foreach( $productGallery as $gallery){
            $gallery->delete();
            unlink(public_path($gallery->image_path));
        }
        toastr()->closeButton()->addSuccess('Product Delete Successfully');
        return back();
    }

        
    }


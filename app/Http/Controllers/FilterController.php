<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FilterController extends Controller
{
    public function search(){
       $category=request()->category;
       $searchTitle=request()->search;

       if($category && $searchTitle){
       $products =productSearch()
       ->where('categories.slug',$category)
       ->where('title', 'LIKE',"%$searchTitle%")
       ->get();
       }
       elseif($category){
        $products =productSearch()->where('categories.slug',$category)->get();
       }elseif($searchTitle){
        $products=Product::with('galleries')
        ->where('title', 'LIKE',"%$searchTitle%")
        ->select('id','title','slug', 'short_description', 'price','sale_price')
        ->where('status', 1)
        ->get();
       }
       
       
       return view('frontend.shop',compact('products'));
    }
}

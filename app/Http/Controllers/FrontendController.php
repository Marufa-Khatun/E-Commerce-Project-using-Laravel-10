<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Product;
use App\Models\Service;
use App\Models\Category;
use App\Models\Promotion;
use App\Models\UserEmail;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class FrontendController extends Controller
{
    public function index(){

     //Best Selling   

     $top_sales =Product::with('galleries')
     ->select('products.*',DB::raw('SUM(order_details.quantity) as total_order_count'))
     ->leftjoin('order_details','products.id', '=','order_details.product_id')
     ->groupBy('products.id')
     ->orderByDesc('total_order_count')
     ->limit(6)
     ->get();

     //Top Categories

     $top_categories=Category::select('categories.*',DB::raw('SUM(order_details.quantity) as total_order_count'))
     ->join('category_product','categories.id', '=', 'category_product.category_id')
     ->join('products','category_product.product_id', '=', 'products.id')
     ->join('order_details','products.id', '=', 'order_details.product_id')
     ->groupBy('categories.id')
     ->orderByDesc('total_order_count')
     ->get();

         
    //New Arrival Product
        $newArrivalProducts =Product::with('galleries')->orderBy('id', 'desc') 
        ->latest()
        ->get()
        ->take(4);

     
    //Recently Viewd Product

    $recently_viewed_products =Product::where('view','>=', 1)
    ->with('galleries')->orderBy('id', 'desc')
    ->with('categories')->orderBy('id', 'desc')
    ->get();
    
   
    $banners = Banner::where('status', 1)->orderBy('id', 'desc')->get();
    $promotions = Promotion::where('status' , 1)->orderBy('id')->get();
    $latestProducts=Product::where('status', 1)->whereMonth('created_at', date('m'))->with('galleries')->orderBy('id', 'desc')->get();
    $service = Service::where('status' , 1)->orderBy('id')->get();
    return view('frontend.index',compact ('top_sales','top_categories','banners','promotions','latestProducts','service','newArrivalProducts','recently_viewed_products'));
    
 }



 //Api

 public function blogPost(){

    $posts =Http::get('https://jsonplaceholder.typicode.com/posts');
    $datas = json_decode($posts);
    return view('frontend.blog.index', compact('datas'));
 }

}



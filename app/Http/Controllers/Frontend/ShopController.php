<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Size;
use App\Models\User;
use App\Models\Color;
use App\Models\Order;
use App\Models\Product;
use App\Models\Category;
use App\Models\Inventory;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ShopController extends Controller
{
    public function index(){
       
        $products = Product::with('galleries')->select('id','title','slug', 'short_description', 'price','sale_price')->where('status', 1)->get();
        return view('frontend.shop', compact('products'));
    }

    public function categoryProduct($slug){
      /*  $products = Category::with(['products' => function($q){
            $q->where('status', 1);
        }])->where('slug',$slug)->where('status', 1)->get(); */
        

        // we can also use join query
    
      $products = Category::join('category_product', 'categories.id', '=', 'category_product.category_id')
       ->join('products', 'products.id', '=', 'category_product.product_id')
       ->select('products.*', 'categories.slug as cat_slug', 'categories.name as cat_name',
        'categories.status as cat_status', DB::raw('(SELECT image_path FROM product_galleries WHERE product_id = products.id LIMIT 1) as image'))
       ->where('categories.slug',$slug)
       ->where('categories.status', 1)
       ->where('products.status', 1)
       ->get();
     
        return view('frontend.shop', compact('products'));
    }


    public function singleProduct($slug){
        $product= Product::with('galleries', 'inventories')->where('slug', $slug)->where('status', 1)->first();
        $colors= Color::where('status', 1)->whereIn('id',$product->inventories->pluck('color_id')->toArray())->get();

       /*  return User::with(['orderDetails' => function($q){
            $q->select('product_id')->groupBy('product_id');
        }])->where('id', Auth::user()->id)->first(); */

        $userOrders= Order::join('order_details', 'order_details.order_id', 'orders.id')
        ->where('user_id', Auth::user()->id)
        ->select('order_details.product_id as product_id')
        ->groupBy('order_details.product_id')
        ->pluck('product_id')->toArray();
        
         //$fiveStars = ProductReview::where('product_id', $product->id)->where('rating', 5)->count();
          $productReview = ProductReview::where('product_id', $product->id)->get();
         //$clickProduct=Product::where('slug',$slug)->increment('view');

        $clickProduct = Product::where('slug', $slug)->first();
         $clickProduct->view =$clickProduct->view+1;
         $clickProduct->update();

         

       
         
          
         
          return view('frontend.shop_details', compact('product','colors','userOrders','productReview','clickProduct'));
    }


    
    public function colorWiseSize(Request $request){
        $sizeArray = Inventory::where('product_id',  $request->product_id)->where('color_id',  $request->color_id)->pluck('size_id')->toArray();
        $sizes = Size::where('status', 1)->whereIn('id',$sizeArray)->get();

        $selectOption = ['<option value="">Select Size</option>'];
        foreach($sizes as $size){
            $selectOption[] = '<option value ="'.$size->id.'">'.$size->name.'</option>';
        }

        return response()->json($selectOption);
}

public function colorSizeWiseInventory(Request $request){
    $inventory = Inventory::where('product_id',  $request->product_id)->where('color_id',  $request->color_id)->where('size_id',  $request->size_id)->first();
    return response()->json($inventory);
}
}
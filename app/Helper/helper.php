<?php

use App\Models\Cart;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

if(!function_exists('getcategories')){
function getcategories(){
$category = Category::where('status', 1 )->get();
return $category;
}
}

if(!function_exists('clientCartDetails')){
    function clientCartDetails(){
        $carts = Cart::with('product')->where('user_id', Auth::id())->get();
        return $carts;
    }
}

if(!function_exists('cartTotal ')){
    function cartTotal(){
        $cartTotal = Cart::where('user_id', Auth::id())->sum('total_price');
        return $cartTotal;
    }
}

if(!function_exists('productSearch')){
    function productSearch(){
        $products = Category::join('category_product', 'categories.id', '=', 'category_product.category_id')
        ->join('products', 'products.id', '=', 'category_product.product_id')
        ->select('products.*', 'categories.slug as cat_slug', 'categories.name as cat_name',
         'categories.status as cat_status', DB::raw('(SELECT image_path FROM product_galleries WHERE product_id = products.id LIMIT 1) as image'))
        ->where('categories.status', 1)
        ->where('products.status', 1);
        return $products;
        
    }
}
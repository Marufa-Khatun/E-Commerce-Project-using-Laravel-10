<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function store(Request $request, Product $id)
{
   
     
   /*  $productSlug = Product::where('slug', $request->input('slug'))->first();
   return $productSlug;

    if (!$productSlug) {
        return response()->json(['error' => 'Product not found'], 404);
    }
    return view('frontend.shop', compact('productSlug'));  */
   
  
   
   $wishlist = new Wishlist();
    $wishlist->user_id = auth()->id(); 
    $wishlist->product_id = $product->id;
    $wishlist->save(); 


    return response()->json(['message' => 'Product added to wishlist'], 200);
}

}

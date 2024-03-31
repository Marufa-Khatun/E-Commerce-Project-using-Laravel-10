<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductApiController extends Controller
{
    public function productList(){
        $products=Product::where('status', 1)->with('categories')->orderBy('id', 'desc')->paginate(5);
        
        if($products){
            $respons=[
                'error'=> false,
                'message'=> 'Product list!',
                'products'=>$products,
            ];
        }else{
            $respons=[
                'error'=> false,
                'message'=> 'Products Not Found!',
            ];
        }

        return response()->json($respons,201);
    }
}

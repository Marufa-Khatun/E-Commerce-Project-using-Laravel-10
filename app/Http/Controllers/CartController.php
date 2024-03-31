<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Coupon;
use App\Models\Product;
use App\Models\Inventory;
use Illuminate\Http\Request;
use App\Models\ShippingSetup;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    public function index(){
        
       $cartTotal = Cart::where('user_id', Auth::id())->sum('total_price');
        
       $coupon_discount = 0.0;
       if(Session::has('applycoupon')){
       $coupon_discount = Session::get('applycoupon')['coupon_discount'];
       }
       
       $shippingSetups = ShippingSetup::all();
        return view('frontend.cart_details' , compact('cartTotal', 'coupon_discount', 'shippingSetups'));
    }

   public function store(Request $request){
    //return $request;
    $inventory =Inventory::where('product_id', $request->product_id)
        ->where('color_id', $request->color_id)
        ->where('size_id', $request->size_id)
        ->first();

        if($request->requested_quantity > $inventory->quantity){
            toastr()->closeButton()->addWarning('Your Request Quantity is to large');
            return back();
        }

        $product = Product::where('id', $request->product_id)->select('id','price','sale_price')->first();
        $productSalePrice = $product->sale_price ?? $product->price;
        $totalPrice = ( $productSalePrice + $inventory->add_price) * $request->requested_quantity;

        Cart::create([
            'user_id'       => Auth::id(),
            'product_id'    =>$request ->product_id,
            'color_id'      =>$request ->color_id,
            'size_id'       =>$request ->size_id,
            'quantity'      =>$request ->requested_quantity,
            'price'         =>$productSalePrice,
            'add_price'     =>$inventory->add_price,
            'total_price'   => $totalPrice

        ]);
        toastr()->closeButton()->addSuccess('Your Cart added successfully');
        return redirect()->route('frontend.shop.index');
   }

   public function destroy($id){
    $cart = Cart::findOrFail($id);
    $cart->delete();
    toastr()->closeButton()->addSuccess('Your Cart deleted successfully');
    return back(); 
   }

   public function cartQuantityUpdate(Request $request){
    Cart::where('id', $request->cart_id)->where('user_id', $request->user_id)->update([
        'quantity'      =>  $request->quantity,
        'total_price'   =>  $request->total,
    ]);
    toastr()->closeButton()->addSuccess('Product Cart Updated');
    return back();
   }
   
   public function cartApplyCoupon(Request $request){

    $request->session()->forget('applycoupon');

     $coupon = Coupon::where('coupon_code', $request->coupon)
     ->where('start_date', '<' , Carbon::now())
     ->where('expire_date', '>' , Carbon::now())
     ->first();


     if(!$coupon){
        toastr()->closeButton()->addError('Invalid Coupon Code!');
        return back()->withInput(['coupon' => $request->coupon]);
     }

     $cartTotal = Cart::where('user_id', Auth::id())->sum('total_price');
     
     if($cartTotal < $coupon->min_applicable_amount){
        toastr()->closeButton()->addError('Insufficient Cart Amount!');
        return back()->withInput(['coupon' => $request->coupon]); 
     }

     $useCouponCount = Order::where('user_id', Auth::id())->where('coupon_id', $coupon->id)->count();

     if($useCouponCount && $useCouponCount >= $coupon->limit){
        toastr()->closeButton()->addError('Invalid Coupon Code!');
        return back()->withInput(['coupon' => $request->coupon]); 
     }

    $couponDetails =[
        'id' => $coupon->id,
        'coupon_code' => $coupon->coupon_code,
        'coupon_discount' => $coupon->coupon_discount,
    ];
    
    $request->session()->put('applycoupon', $couponDetails);
    return back()->withInput(['coupon' => $request->coupon]);
   }

   public function getShippingCharge(Request $request){
        $shippingCharge = ShippingSetup::where('id', $request->shipping_setup_id)->first();
        $request->session()->put('shipping_charge', $shippingCharge->add_price);
        return response()->json($shippingCharge);
       }


}

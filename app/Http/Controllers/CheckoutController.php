<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use App\Models\Coupon;
use App\Models\Inventory;
use App\Mail\OrderInvoice;
use App\Models\UserDetail;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use App\Models\ShippingAddress;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Notifications\InvoicePaid;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Notification;
use App\Library\SslCommerz\SslCommerzNotification;

class CheckoutController extends Controller
{
    public function index()
    {
        $cartTotal = Cart::where('user_id', Auth::id())->sum('total_price');
        $coupon_discount = 0.0;
        if (Session::has('applycoupon')) {
            $coupon_discount = Session::get('applycoupon')['coupon_discount'];
        }

        $shippingCharge = 0.0;
        if (Session::has('shipping_charge')) {
            $shippingCharge = Session::get('shipping_charge');
        }

        return view('frontend.checkout', compact('cartTotal', 'coupon_discount', 'shippingCharge'));
    }

    public function order(Request $request)
    {
        # Here you have to receive all the order data to initate the payment.
        # Let's say, your oder transaction informations are saving in a table called "orders"
        # In "orders" table, order unique identity is "transaction_id". "status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        
        $couponCode =Session::has('applycoupon') ? Session::get('applycoupon')['coupon_code']: null;
        if($couponCode){
            $coupon = Coupon::where('coupon_code', $couponCode)
            ->where('start_date', '<' , Carbon::now())
            ->where('expire_date', '>' , Carbon::now())
            ->first();
    
    
            if(!$coupon){
                toastr()->closeButton()->addError('Invalid Coupon Code!');
                return redirect()->route('frontend.product.cart.list');
            }
        }
        $cartTotal = Cart::where('user_id', Auth::id())->sum('total_price');
        $carts = Cart::with('product')->where('user_id', Auth::id())->get();

        $totalPrice =$cartTotal - (Session::has('applycoupon') ? Session::get('applycoupon')['coupon_discount']:0) + (Session::has('shipping_charge') ? Session::get('shipping_charge'):0);

        foreach($carts as $cart){
            $inventory = Inventory::with('product')->where('product_id', $cart->product_id)
                ->where('color_id', $cart->color_id)
                ->where('size_id', $cart->size_id)
                ->first();

            if($inventory->quantity< $cart->quantity){
                toastr()->closeButton()->addError($cart->product->title .',is not available!');
                return redirect()->route('frontend.product.cart.list'); 
            }    
        }
        


        $post_data = array();
        $post_data['total_amount'] = $totalPrice; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = Auth::user()->name;
        $post_data['cus_email'] = Auth::user()->email;
        $post_data['cus_add1'] =  $request->billing_address_1;
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] =  $request->billing_phone;
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";

       DB::beginTransaction();
        try
        {
            UserDetail::create([
                'user_id' => Auth::id(),
                'phone' => $request->billing_phone,
                'company' => $request->billing_company,
                'address' => $request->billing_address_1,
                'city' => $request->billing_city,
                'zipcode' => $request->billing_postcode8,

            ]);

            $order = Order::create([
                'user_id' => Auth::id(),
                'transaction_id' => $post_data['tran_id'],
                'coupon_id' =>Session::has('applycoupon') ? Session::get('applycoupon')['id']: null,
                'coupon_discount' =>Session::has('applycoupon') ? Session::get('applycoupon')['coupon_discounthas']: null ,
                'shipping_charge' =>Session::has('shipping_charge') ? Session::get('shipping_charge'):null ,
                'total_price' => $totalPrice,
                'order_status' =>'pending',
                'payment_status' => 'unpaid',
                'note' => $request->order_comments,

            ]);

            foreach($carts as $cart){
                OrderDetail::create([
                    'order_id' =>$order->id,
                    'product_id' => $cart->product_id,
                    'color_id' => $cart->color_id,
                    'size_id' => $cart->size_id ,
                    'quantity' => $cart->quantity ,
                    'price' => $cart->price ,
                    'add_price' => $cart->add_price ,
                ]);
                
                $inventory = Inventory::where('product_id', $cart->product_id)
                ->where('color_id', $cart->color_id)
                ->where('size_id', $cart->size_id)
                ->first();

                $inventory->update([
                    'quantity'=>$inventory->quantity-$cart->quantity,
                ]);
                
                $cart->delete();
                $request->session()->forget('applycoupon');
                $request->session()->forget('applycoupon');
            }

            
            if($request->shipping_phone){
                ShippingAddress::create([
                    'order_id' =>$order->id,
                    'name' => $request->shipping_name,
                    'phone' => $request->shipping_phone,
                    'company' => $request->shipping_company,
                    'address' => $request->shipping_address_1,
                    'city' => $request->shipping_city,
                    'zipcode' => $request->shipping_postcode,
                ]);
    
            }

            
            DB::commit();
        } catch (Exception $e) {
            DB::rollBack();
            return $e->getMessage();
        }
        
       
        

        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'hosted');
        

        if (!is_array($payment_options)) {

           

            print_r($payment_options);
            $payment_options = array();
        }
       
       
    }

    public function success(Request $request)
    {
        echo "Transaction is Successful";

        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
      

        $sslc = new SslCommerzNotification();

        #Check order status in order tabel against the transaction id or order id.
        $order_details =Order::with('orderDetails') 
            ->where('transaction_id', $tran_id)
            ->select('id','transaction_id', 'order_status', 'payment_status', 'total_price')->first();

       
            $invoiceNo = 'stowaa-' . $order_details->id;
        
            if ($order_details->order_status == 'pending') {
            $validation = $sslc->orderValidate($request->all(), $tran_id, $amount);

            if ($validation) {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel. Here you need to update order status
                in order table as Processing or Complete.
                Here you can also sent sms or email for successfull transaction to customer
                */
                    DB::table('orders')
                    ->where('transaction_id', $tran_id)
                    ->update([
                        'order_status' => 'processing',
                        'payment_status' => 'paid',
                        'invoice_no' =>   $invoiceNo,

                    ]);

                    $order =Order::with('orderDetails.product') 
                    ->where('transaction_id', $tran_id)
                    ->select('id','transaction_id', 'order_status', 'payment_status', 'total_price', 'invoice_no')->first();
        

                    $pdf = Pdf::loadView('invoice.invoice', ['data'=>$order]);
                    $invoiceOutput = $pdf->output();
                    $invoiceName = $order->id . '_invoice.pdf';
            
                    Notification::send(Auth::user(), new InvoicePaid($invoiceOutput, $order, $invoiceName));

                toastr()->closeButton()->addSuccess('Transaction is successfully Completed');
                return redirect()->route('frontend.index');
            }
        } else if ($order_details->order_status == 'processing' || $order_details->order_status == 'complete') {

            toastr()->closeButton()->addSuccess('Transaction is successfully Completed');
            return redirect()->route('frontend.index');

        } else {

            #That means something wrong happened. You can redirect customer to your product page.
            echo "Invalid Transaction";
        }


    }


    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_details = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'order_status', 'payment_status', 'total_price')->first();

        if ($order_details->order_status == 'pending') {
                 DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['order_status' => 'failed']);

                toastr()->closeButton()->addWarning('Transaction is Falied');
                return redirect()->route('frontend.index');


        } else if ($order_details->order_status == 'processing' || $order_details->order_status == 'complete') {
          toastr()->closeButton()->addWarning('Transaction is already Successful');
            return redirect()->route('frontend.index');
        } else {
            echo "Transaction is Invalid";
        }

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_details = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'order_status', 'payment_status', 'total_price')->first();

        if ($order_details->order_status == 'pending') {
                DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['order_status' => 'canceled']);
           
            toastr()->closeButton()->addWarning('Transaction is Cancel');
            return redirect()->route('frontend.index');
        } else if ($order_details->order_status == 'processing' || $order_details->order_status == 'complete') {

            toastr()->closeButton()->addWarning('Transaction is already Successful');
            return redirect()->route('frontend.index');

        } else {
            echo "Transaction is Invalid";
        }


    }

    public function ipn(Request $request)
    {
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'order_status', 'payment_status', 'total_price')->first();

            if ($order_details->order_status == 'pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($request->all(), $tran_id, $order_details->amount);
                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                        DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['order_status' => 'processing']);

                    
                    toastr()->closeButton()->addSuccess('Transaction is successfully Completed');
                    return redirect()->route('frontend.index');
                }
            } else if ($order_details->order_status == 'processing' || $order_details->order_status == 'complete') {

                #That means Order status already updated. No need to udate database.

               
                toastr()->closeButton()->addWarning('Transaction is already successfully Completed"');
                return redirect()->route('frontend.index');
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}

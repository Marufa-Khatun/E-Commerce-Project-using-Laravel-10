<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use Illuminate\Support\Facades\Auth;

class ProductReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders=Order::with(['orderDetails.product','orderDetails.review'])->where('user_id', Auth::id())->get();
       //return $orders;
        return view('frontend.dashboard.review.index', compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('frontend.dashboard.review.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        ProductReview::create([
            'order_detail_id' => $request->order_detail_id,
            'product_id' => $request->product_id,
            'user_id'=>Auth::id(),
            'rating' => $request->rating,
            'comments' => $request->comment,
        ]);

        return redirect()->route('frontend.product-review.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(ProductReview $productReview)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ProductReview $productReview)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ProductReview $productReview)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ProductReview $productReview)
    {
        //
    }
}

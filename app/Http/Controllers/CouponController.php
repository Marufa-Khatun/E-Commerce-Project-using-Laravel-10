<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $coupons = Coupon::get();
        return view('backend.coupon.index', compact('coupons'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        Coupon::create($request->all());
        
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Coupon $coupon)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Coupon $coupon)
    {
        $coupons= Coupon::all();
        return view('backend.coupon.edit', compact('coupons','coupon'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Coupon $coupon)
    {

        $request->validate([
            'coupon_code'=>'required',
            
          
        ]);

        $coupon->update([
            "coupon_code"           =>  $request->coupon_code,
            "start_date"            =>  $request->start_date,
            "expire_date"           =>  $request->expire_date,
            "coupon_discount"       =>  $request->coupon_discount,
            "min_applicable_amount" =>  $request->min_applicable_amount,
            "limit"                 =>  $request->limit,
                    
        ]);
        toastr()->closeButton()->addSuccess('Coupon Updated Successfully');
        return back();
        }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Coupon $coupon)
    {
        //
    }
}

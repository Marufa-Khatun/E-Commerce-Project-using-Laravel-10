<?php

namespace App\Http\Controllers;

use App\Models\ShippingSetup;
use Illuminate\Http\Request;

class ShippingSetupController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $shippings = ShippingSetup::all();
        return view('backend.shipping_setup.index',compact('shippings'));
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
       ShippingSetup::create($request->all());
       return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(ShippingSetup $shippingSetup)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ShippingSetup $shippingSetup)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ShippingSetup $shippingSetup)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ShippingSetup $shippingSetup)
    {
        //
    }
}

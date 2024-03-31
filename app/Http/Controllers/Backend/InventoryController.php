<?php

namespace App\Http\Controllers\Backend;

use App\Models\Size;
use App\Models\Color;
use App\Models\Product;
use App\Models\Inventory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class InventoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $product = Product::find($request->product_id);
        $colors = Color::all();
        $sizes = Size::all();
        $inventories = Inventory::with('color','size')->where('product_id',$request->product_id)->get();
       
        return view('backend.inventory.index', compact('product','colors','sizes','inventories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
       
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "product_id" => 'required|integer',
            "color_id"   => 'required',
            "size_id"    => 'required',
            "quantity"   => 'required|integer',
            "add_price"  => 'required|integer',
        ]);

        Inventory::create($request->all());
        toastr()->closeButton()->addSuccess('Inventory Created Successfully');
        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Inventory $inventory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Inventory $inventory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Inventory $inventory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Inventory $inventory)
    {
        //
    }
}

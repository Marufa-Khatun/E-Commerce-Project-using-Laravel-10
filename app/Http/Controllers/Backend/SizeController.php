<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Size;
use Illuminate\Http\Request;

class SizeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       
        $sizes = Size::orderBy('id', 'desc')->paginate(5);
        return view('backend.size.index',compact('sizes'));
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
        $request->validate([
            'name' => 'required|unique:sizes,name',
        ]);

        Size::create($request->all());
        toastr()->closeButton()->addSuccess('Size Created Successfully');
        return redirect()->route('backend.productmanagement.size.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Size $size)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Size $size)
    {
        $sizes=$size->name;
        return view('backend.size.edit', compact('sizes','size'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Size $size)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $size->update([
            "name" => $request->name,
            
        ]);
        toastr()->closeButton()->addSuccess('Size Updated Successfully');
        return redirect()->route('backend.productmanagement.size.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Size $size)
    {
        $size->delete();
        toastr()->closeButton()->addSuccess('Size Deleted Successfully');
        return back();
    }
}

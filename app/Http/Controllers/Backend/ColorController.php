<?php

namespace App\Http\Controllers\Backend;

use App\Models\Color;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;


class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        
        return view('backend.color.index');
    }
    public function ColorDataList(){
        $colors = Color::orderBy('id');
        return DataTables::of($colors)
        ->editColumn('created_at', function( $colors){
            return $colors->created_at->format('d M Y');
        })
        ->editColumn('status', function( $colors){
           
            return $colors->status == 1 ? '<span class="badge bg-success">Active</span>' : '<span class="badge bg-warning">Deactive</span>';
        })
        
        ->addColumn('action', function($colors){
            $link ='  <a href="'. route('backend.productmanagement.color.edit', $colors->id ) .'" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
            <span class="svg-icon svg-icon-3">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor"></path>
                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor"></path>
                </svg>
            </span>
        </a>';
     
    
    
    return $link ;
        })
        ->rawColumns(['status', 'action'])
        ->addIndexColumn()
        ->make(true);
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
            'name' => 'required|unique:colors,name',
        ]);
        Color::create($request->all());
        toastr()->closeButton()->addSuccess('Color Created Successfully');
        return redirect()->route('backend.productmanagement.color.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Color $color)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Color $color)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Color $color)
    {

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Color $color)
    {
        //
    }
}

@extends('layouts.backendapp')

@section('content')


 
 

    <div class="col-xl-12">
    
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Single Product View</span>
                
            </h3>
           
        </div>
        <div class="card-body py-3">
            <div class="table-responsive"> 
                <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">  
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >ID.</th>
                            <th >Title</th>
                            <th >Category</th>
                            <th >Price</th>
                            <th >Sale Price</th>
                            <th >Status</th>
                            <th >Created_AT</th>
                          
                        </tr>
                    </thead>
                    <tbody>
                       
                            <tr>
                               
                               <td>{{ $product->id }}</td>
                               <td>{{ $product->title }}</td>
                               <td>
                                @foreach ($product->categories as $category)
                                <span class="badge bg-success">{{ $category->name  }}</span>
                                @endforeach
                               </td>
                               <td>{{ $product->price}}</td>
                               <td>{{ $product->sale_price }}</td>
                               <td>{{ $product->status }}</td>
                               <td>{{ $product->created_at }}</td>  
                        </tr> 
                      
                    </tbody>
                </table>
                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <a href="{{ route('backend.productmanagement.product.index') }}"  class="btn btn-primary btn-sm rounded-pill">
                        <span class="indicator-label">back</span>
                    </a>
                </div>
            </div>
        </div>
            
    </div>


@endsection

                  

                   

        





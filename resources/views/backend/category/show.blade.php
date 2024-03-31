@extends('layouts.backendapp')

@section('content')


 
   

<div class="col-xl-8">
    
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">SIngle Category</span>
                
            </h3>
           
        </div>
        <!--end::Header-->
        <!--begin::Body-->
        <div class="card-body py-3">
            <!--begin::Table container-->
            <div class="table-responsive">
                <!--begin::Table-->
                <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">
                    <!--begin::Table head-->
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >Sl.</th>
                            <th >ID</th>
                            <th >Name</th>
                            <th >Slug</th>
                            <th >Count</th>
                            <th >Created_at</th>
                           
                        </tr>
                    </thead>
                    <!--end::Table head-->
                    <!--begin::Table body-->
                    <tbody>
                        
                            
                       
                        
                            @foreach ($allCategories  as $category)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $category->id }}</td>
                                <td>{{ $category->name }}</td>
                                <td>{{ $category->slug }}</td>
                                <td>{{ $category->products_count }}</td>
                                <td>{{ $category->created_at->format('d M Y') }}</td>
                           
                            
                            
                        </tr>
                            @endforeach
                        
                       
                        
                    </tbody>
                    <!--end::Table body-->
                </table>
                <!--end::Table-->
            </div>
            <!--end::Table container-->
        </div>
        <!--begin::Body-->
       
    
</div>


   
  

                  
@endsection

                  

                   

        





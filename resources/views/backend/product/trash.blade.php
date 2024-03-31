@extends('layouts.backendapp')

@section('content')


 
 

    <div class="col-xl-12">
    
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Product Trash List</span>
            </h3>
           
           
        </div>
        <div class="card-body py-3">
            <div class="table-responsive"> 
                <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">  
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >Sl.</th>
                            <th >Title</th>
                            <th >Category</th>
                            <th >Price</th>
                            <th >Sale Price</th>
                            <th >Status</th>
                            <th >Created_AT</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $product )
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $product->title }}</td>
                                <td>
                                    @foreach ($product->categories as $category)
                                        <span class="badge bg-success">{{ $category->name  }}</span>
                                    @endforeach
                                </td>
                                <td>{{ $product->price }}</td>
                                <td>{{ $product->sale_price }}</td>
                                <td>{{ $product->status }}</td>
                                <td>{{ $product->created_at->format('d M Y') }}</td>
                                
                            <td class="text-end">
                                <a href="{{ route('backend.productmanagement.product.trash.restore',$product->id) }} " class="btn btn-sm btn-primary text-white">Restore</a>
                                
                                <form action="{{ route('backend.productmanagement.product.trash.delete',$product->id) }}" method="POST" class="d-inline trashDelete">
                                @csrf
                                @method('delete')
                                    <button type="submit" class="btn btn-sm btn-bg-warning">Parmanent Delete</button>
                                </form>
                            </td>
                        </tr> 
                        @endforeach 
                    </tbody>
                </table>
                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <a href="{{ route('backend.productmanagement.product.index') }}"  class="btn btn-primary btn-sm ">
                        <span class="indicator-label">back</span>
                    </a>
                </div>
            </div>
        </div>
            <div class="card-footer"> 
                {{ $products->links() }} 
            </div>
    </div>


@endsection

 @section('script')
     <script>
        $(function(){
            $('.trashDelete').on('click', function(e){
                e.preventDefault();
                /* var submiturl= $(this).attr('action');
                console.log(submiturl); */

                Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!"
                }).then((result) => {
                if (result.isConfirmed) {
                    $(this).submit();
                }
                });
             });
        });
     </script>
 @endsection                 

                   

        





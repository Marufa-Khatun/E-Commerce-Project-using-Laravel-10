@extends('layouts.backendapp')
@section('title', 'Color')
@section('content')

<div class="col-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Color List</span>  
            </h3>
            <div class="card-title">
                <!--begin::Search-->
                {{-- <div class="d-flex align-items-center position-relative my-1">
                    <!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
                    <span class="svg-icon svg-icon-1 position-absolute ms-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                            <rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="currentColor"></rect>
                            <path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="currentColor"></path>
                        </svg>
                    </span>
                    <!--end::Svg Icon-->
                    <input type="text" data-kt-ecommerce-category-filter="search" class="form-control form-control-solid w-250px ps-14" placeholder="Search Category">
                </div> --}}
                <!--end::Search-->
            </div>
        </div>
        <div class="card-body py-3">
            <div class="table-responsive">
                <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4 "
                id="colorDatatable">
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >Sl.</th>
                            <th >Name</th>
                            <th >Slug</th>
                            <th >Status</th>
                            <th >Created_at</th>
                            <th class="text-end">Actions</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                            
                    </tbody>
                </table>
            </div>
        </div>
        
</div>
<div class="col-xl-4">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Create color</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.color.store') }}" method="POST" >
                    @csrf
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control form-control-solid" placeholder="Enter color Name" name="name">
                        @error('name')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <button type="submit"  class="btn btn-primary">
                            <span class="indicator-label">Create+</span>
                        </button>
                    </div>
                </form>
            </div>
    </div>
</div>
@endsection

@section('script')
    

 <script>
   $(document).ready(function(){
    /* $.ajax({
        url:'{{ route('backend.productmanagement.color.data.list') }}',
       type:'GET',
       
       success: function(result){
            console.log(result);
       
       }
   
}) ; */

   var colorDatatable = $('#colorDatatable').DataTable({
    ajax:{
        url:'{{ route('backend.productmanagement.color.data.list') }}',
       type:'GET',
       /* dataType:'json',
       success: function(data){
            console.log(result);
       
       } */
    },
       columns:[
        {
            data:'DT_RowIndex',
           
        },
        {
            data:'name',
            name:'name',
        },
        {
            data:'slug',
            name:'slug',
        },
        {
            data:'status',
            name:'status',
        },
        
        {
            data:'created_at',
            name:'created_at',
        },
       
        {
            data:'action',
            name:'action',
        }
        
    
    ]

    });
   });

</script>        

@endsection                 

        



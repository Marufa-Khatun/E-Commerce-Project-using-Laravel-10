@extends('layouts.backendapp')
@section('title', 'Coupon')
@section('content')

<div class="col-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Coupon List</span>  
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
              >
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >Sl.</th>
                            <th >Coupn</th>
                            <th >S_Dte</th>
                            <th >E_Dte</th>
                            <th >Discnt</th>
                            <th >App_Amnt</th>
                            <th >Use Limit</th>
                            <th >Status</th>
                            <th >Created At</th>
                            <th class="text-end">Actions</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                           @foreach ($coupons as $coupon)
                               <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $coupon->coupon_code }}</td>
                                <td>{{ $coupon->start_date->format('d Y M') }}</td>
                                <td>{{ $coupon->expire_date ->format('d Y M')}}</td>
                                <td>{{ $coupon->coupon_discount }}</td>
                                <td>{{ $coupon->min_applicable_amount }}</td>
                                <td>{{ $coupon->limit }}</td>
                                <td>{{ $coupon->status }}</td>
                                <td>{{ $coupon->created_at->format('d Y M') }}</td>
                                <td>
                                    <div class="d-flex justify-content-end flex-shrink-0">
                                        <a href="{{ route('backend.productmanagement.coupon.show', $coupon->id) }}" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
                                            <span class="svg-icon svg-icon-3">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="currentColor"></path>
                                                    <path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="currentColor"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                        </a>
                                        @can('edit coupon')
                                            
                                        
                                        <a href="{{ route('backend.productmanagement.coupon.edit', $coupon->id) }}" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                            <!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
                                            <span class="svg-icon svg-icon-3">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="currentColor"></path>
                                                    <path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="currentColor"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                        </a>
                                        @endcan
    
                                        @can('delete coupon')
                                            
                                        <form method ="POST" action="{{ route('backend.productmanagement.coupon.destroy', $coupon->id) }}">
                                            @csrf
                                            @method('delete')
                                        <button type="submit"  class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
                                            <!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
                                            <span class="svg-icon svg-icon-3">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="currentColor"></path>
                                                    <path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="currentColor"></path>
                                                    <path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="currentColor"></path>
                                                </svg>
                                            </span>
                                            <!--end::Svg Icon-->
                                        </button>
                                      </form>
                                        @endcan
                                    </div>
                                </td>
                               </tr>
                           @endforeach 
                           
        
        
        
        
        
                    </tbody>
                </table>
            </div>
        </div>
        
</div>

<div class="col-xl-4">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Create Coupon</span>  
            </h3>
        </div>
        
            
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.coupon.store') }}" method="POST" >
                    @csrf
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Coupon Code <span class="text-danger">*</span></label>
                        <input type="text" class="form-control form-control-solid"  name="coupon_code">
                        @error('coupon_code')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                   <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Starting Date</label>
                        <input type="date" class="form-control form-control-solid"  name="start_date">
                        @error('start_date')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Expire Code</label>
                        <input type="date" class="form-control form-control-solid" name="expire_date">
                        @error('expire_date')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Coupon Discount</label>
                        <input type="text" class="form-control form-control-solid"  name="coupon_discount">
                        @error('coupon_discount')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Applicable Amount</label>
                        <input type="text" class="form-control form-control-solid"  name="min_applicable_amount">
                        @error('min_applicable_amount')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Limit</label>
                        <input type="text" class="form-control form-control-solid"  name="limit">
                        @error('limit')
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
            

        



@extends('layouts.backendapp')
@section('title', 'Coupon')
@section('content')



<div class="col-xl-4">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Update Coupon</span>  
            </h3>
        </div>
        
            
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.coupon.update', $coupon->id) }}" method="POST" >
                    @csrf
                    @method('put')
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Coupon Code <span class="text-danger">*</span></label>
                        <input type="text" value="{{ old('name', $coupon->coupon_code) }}" class="form-control form-control-solid"  name="coupon_code">
                        @error('coupon_code')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                   <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Starting Date</label>
                        <input type="date" value="{{ old('name', $coupon->start_date) }}" class="form-control form-control-solid"  name="start_date">
                        @error('start_date')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Expire Code</label>
                        <input type="date" value="{{ old('name', $coupon->expire_date) }}" class="form-control form-control-solid" name="expire_date">
                        @error('expire_date')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Coupon Discount</label>
                        <input type="text" value="{{ old('name', $coupon->coupon_discount) }}" class="form-control form-control-solid"  name="coupon_discount">
                        @error('coupon_discount')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Applicable Amount</label>
                        <input type="text"  value="{{ old('name', $coupon->min_applicable_amount) }}" class="form-control form-control-solid"  name="min_applicable_amount">
                        @error('min_applicable_amount')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Limit</label>
                        <input type="text" value="{{ old('name', $coupon->limit) }}"  class="form-control form-control-solid"  name="limit">
                        @error('limit')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <button type="submit"  class="btn btn-primary">
                            <span class="indicator-label">Update</span>
                        </button>
                    </div>
                </form>
            </div>
    </div>
</div>

@endsection
            

        



@extends('layouts.backendapp')

@section('title', 'Update Size')

@section('content') 


<div class="col-xl-4">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Update Size</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.size.update',$size->id) }}" method="POST" >
                    @csrf
                    @method('put')
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Name <span class="text-danger">*</span></label>
                        <input type="text" value="{{ old('name',$size->name) }}" class="form-control form-control-solid" placeholder="Enter Size " name="name">
                        @error('name')
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

                  

                   

        





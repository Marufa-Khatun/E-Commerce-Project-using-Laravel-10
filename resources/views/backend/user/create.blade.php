@extends('layouts.backendapp')

@section('title', 'Add User')

@section('content') 


<div class="col-xl-8">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Add User</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.userrolemanagement.user.store') }}" method="POST" >
                    @csrf
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">User Name <span class="text-danger">*</span></label>
                        <input type="text" class="form-control form-control-solid" placeholder="Enter Name " name="name">
                        @error('name')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                   <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">User Email <span class="text-danger">*</span></label>
                    <input type="email" class="form-control form-control-solid" placeholder="Enter Email " name="email">
                    @error('email')
                    <p class="text-danger">{{ $message }}</p>  
                    @enderror
                  </div>
                  <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">User Password <span class="text-danger">*</span></label>
                    <input type="password" class="form-control form-control-solid" placeholder="Enter Password " name="password">
                    @error('password')
                    <p class="text-danger">{{ $message }}</p>  
                    @enderror
                  </div>
                  <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">Select Role <span class="text-danger">*</span></label>
                       
                    <select name="role[]" class="form-control form-control-solid active_select2" id="">
                       
                        <option selected value="">Select Role</option>
                        @foreach ($roles as $role)
                        <option selected value="{{ $role->id }}">{{ $role->name }}</option>
                        @endforeach  
                    </select>
                    @error('role')
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
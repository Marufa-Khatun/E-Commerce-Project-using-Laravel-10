@extends('layouts.backendapp')

@section('content')


 
   


<div class="col-xl-12">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
    
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Edit Role </span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.userrolemanagement.role.update', $role->id) }}" method="POST">
                    @csrf
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                       
                        <label class="fs-6 fw-bold mb-2">Role Name</label>
                        <input type="text"  value="{{ $role->name }}" class="form-control form-control-solid" name="name">
                     
                        @error('name')
                        <p class="text-danger">{{ $message }}</p>
                            
                        @enderror
                   </div>

                   <div class="fv-row mb-9 fv-plugins-icon-container">

                    
                    @foreach ($permissions as $permission)
              
                    <label class="fs-6 fw-bold mb-2 border py-1 px-2 mx-2">
                    <input type="checkbox" value=" {{ $permission->id }}" class=" form-control-solid"  name="permission[]"
                    {{ in_array($permission->id, $role->permissions->pluck('id')->toArray())? 'checked': '' }}>
                    {{ $permission->name }}
                    </label>
                              
                    @endforeach
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

</div>


@endsection
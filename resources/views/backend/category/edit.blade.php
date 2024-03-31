@extends('layouts.backendapp')

@section('content')


<div class="col-xl-4">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Update Category</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.category.update', $category->id) }}" method="POST" enctype="multipart/form-data">
                    
                    @csrf
                    @method('put')
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Name <span class="text-danger">*</span></label>
                        <input type="text" value="{{ old('name', $category->name) }}" class="form-control form-control-solid" placeholder="Enter Category Name" name="name">
                        @error('name')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>

                   <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Parent Category(optional)</label>
                        <select name="parent" class="form-control form-control-solid active_select2" >
                            <option value="">Select Parent</option>
                            @foreach ($selectCategories as $category)
                                <option value="{{ $category->id }}"
                                    {{ in_array($category->id, $selectCategories->pluck('id')->ToArray())? 'selected':''}}>{{ $category->name }}</option>
                            @endforeach
                        </select>
                        @error('parent')
                        <p class="text-danger">{{ $message }}</p> 
                        @enderror
                   </div>

                   <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Image</label>
                        <input type="file"  class="form-control form-control-solid"  name="image">
                        <p>Upload 200x256 Image!</p>
                        @error('image')
                        <p class="text-danger">{{ $message }}</p>   
                        @enderror
                    </div>

                    <div class="fv-row mb-9 fv-plugins-icon-container">
                            <label class="fs-6 fw-bold mb-2">Description</label>
                            <textarea name="description"class="form-control form-control-solid" rows="6">{{ old('name', $category->description) }}</textarea>
                            @error('description')
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

                  

                   

        





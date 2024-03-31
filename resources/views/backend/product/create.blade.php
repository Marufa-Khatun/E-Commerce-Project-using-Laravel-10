@extends('layouts.backendapp')
@section('title','Product Create')
@section('content')


<div class="row gy-5 g-xl-8">
<div class="col-xl-12">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Create Product</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.product.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                            <label class="fs-6 fw-bold mb-2">Title<span class="text-danger">*</span></label>
                            <input type="text" class="form-control form-control-solid" placeholder="Enter Title" name="title">
                            @error('title')
                            <p class="text-danger">{{ $message }}</p>  
                            @enderror
                       </div>
    
                       <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                            <label class="fs-6 fw-bold mb-2">Product Category</label>
                            <select name="category_id[]" class="form-control form-control-solid active_select2" multiple >
                                <option value="">Select Category</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                            @error('category_id')
                            <p class="text-danger">{{ $message }}</p> 
                            @enderror
                       </div>
                    </div>
                  <div class="row">
                    <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                        <label class="fs-6 fw-bold mb-2">Price</label>
                        <input name="price" type="number" class="form-control form-control-solid" >
                        @error('price')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                        <label class="fs-6 fw-bold mb-2">Sale Price</label>
                        <input name="sale_price" type="number" class="form-control form-control-solid" >
                        @error('sale_price')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror    
                    </div>
                  </div>

                    <div class="fv-row mb-9 fv-plugins-icon-container">
                            <label class="fs-6 fw-bold mb-2">Short Description</label>
                            <textarea name="short_description" class="form-control form-control-solid" rows="6"></textarea>
                            @error('short_description')
                            <p class="text-danger">{{ $message }}</p>
                            @enderror
                    </div>
                    
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Description</label>
                        <textarea name="description" class="form-control form-control-solid summernote" ></textarea>
                        @error('description')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                </div>
                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">Additional Information</label>
                    <textarea name="add_info" type="number" class="form-control form-control-solid summernote" ></textarea>
                    @error('add_info')
                    <p class="text-danger">{{ $message }}</p>
                    @enderror    
                </div>

                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">ProductGallery</label>
                    <input type="file"  class="form-control" name="product_gallery[]" multiple >
                    
                      
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
</div>
@endsection

 @section('style')
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/basic.min.css" type="text/css"/>
 @endsection                 

 @section('script')
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>  
 {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.min.js"></script> --}}
<script>
    /* var dropzone = new Dropzone('#demo-upload', {
  previewTemplate: document.querySelector('#preview-template').innerHTML,
  parallelUploads: 2,
  thumbnailHeight: 120,
  thumbnailWidth: 120,
  maxFilesize: 3,
  filesizeBase: 1000,
  thumbnail: function(file, dataUrl) {
    if (file.previewElement) {
      file.previewElement.classList.remove("dz-file-preview");
      var images = file.previewElement.querySelectorAll("[data-dz-thumbnail]");
      for (var i = 0; i < images.length; i++) {
        var thumbnailElement = images[i];
        thumbnailElement.alt = file.name;
        thumbnailElement.src = dataUrl;
      }
      setTimeout(function() { file.previewElement.classList.add("dz-image-preview"); }, 1);
    }
  }

}); */




    $(document).ready(function() {
    $('.summernote').summernote({ 
    height: 200,
       
      });
});
</script>

@endsection                  

        





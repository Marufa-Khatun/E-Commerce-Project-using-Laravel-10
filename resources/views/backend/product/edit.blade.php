@extends('layouts.backendapp')
@section('title','Product Update')
@section('content')


<div class="row gy-5 g-xl-8">
<div class="col-xl-12">
    <div class="card card-xl-stretch mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Update Product</span>  
            </h3>
        </div>
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.product.update', $product->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    <div class="row">
                        <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                            <label class="fs-6 fw-bold mb-2">Title<span class="text-danger">*</span></label>
                            <input type="text" value="{{ old('name',$product->title) }}" class="form-control form-control-solid" placeholder="Enter Title" name="title">
                            @error('title')
                            <p class="text-danger">{{ $message }}</p>  
                            @enderror
                       </div>
    
                       <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                            <label class="fs-6 fw-bold mb-2">Product Category</label>
                           <select name="category_id[]" class="form-control form-control-solid active_select2" multiple >
                                <option value="">Select Category</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}"
                                        {{  in_array($category->id, $product->categories->pluck('id')->ToArray()) ? 'selected': ''}}>{{ $category->name }}</option>
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
                        <input name="price"  value="{{ old('name',$product->price) }}" type="number" class="form-control form-control-solid" >
                        @error('price')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container col-md-6">
                        <label class="fs-6 fw-bold mb-2">Sale Price</label>
                        <input name="sale_price"  value="{{ old('name',$product->sale_price) }}" type="number" class="form-control form-control-solid" >
                        @error('sale_price')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror    
                    </div>
                  </div>

                    <div class="fv-row mb-9 fv-plugins-icon-container">
                            <label class="fs-6 fw-bold mb-2">Short Description</label>
                            <textarea name="short_description" class="form-control form-control-solid" rows="6">{{ old('name',$product->short_description) }}</textarea>
                            @error('short_description')
                            <p class="text-danger">{{ $message }}</p>
                            @enderror
                    </div>
                    
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Description</label>
                        <textarea name="description" class="form-control form-control-solid summernote" > {{ old('name',$product->description) }}</textarea>
                        @error('description')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                </div>
                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">Additional Information</label>
                    <textarea name="add_info" type="number" class="form-control form-control-solid summernote" >{{ old('name',$product->add_info) }}</textarea>
                    @error('add_info')
                    <p class="text-danger">{{ $message }}</p>
                    @enderror    
                </div>

                <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">ProductGallery</label>
                    <div class="from-group">
                        <label for="document">Document</label>
                        <div id="dropzone"  >
                            <div class="dropzone needsclick" id="demo-upload" action="/upload">
                                <div  class="dz-message needsclick">
                                    Drop Files here or click to upload.<BR>
                                    <span class="note needsclick">(this is just a demo dropzone.
                                        selected files are <strong>not</strong> actually uploaded )</span>
                                </div>
                            </div>
                        </div>
                    </div>
                      
                </div>

                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <button type="submit"  class="btn btn-primary">
                            <span class="indicator-label">update</span>
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
 <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.min.js"></script>
<script>
    var dropzone = new Dropzone('#demo-upload', {
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

});




    $(document).ready(function() {
    $('.summernote').summernote({ 
    height: 200,
       
      });
});
</script>

@endsection                  

        





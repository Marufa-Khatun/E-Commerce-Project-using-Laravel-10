@extends('layouts.backendapp')
@section('title', 'About')
@section('content')

<div class="col-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">About List</span>  
            </h3>
            <div class="card-title">
               
            </div>
        </div>
        <div class="card-body py-3">
            <div class="table-responsive">
                <table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4 "
              >
                    <thead>
                        <tr class="fw-bolder text-muted">
                            <th >Sl.</th>
                            <th >Title-1</th>
                            <th >Title-2</th>
                            <th >shortDes</th>
                            <th >Ex-Y</th>
                            <th >H-Cus</th>
                            <th >Clnt-Stfc</th>
                            <th >Image</th>
                            <th >Created_AT</th>
                            <th class="text-end">Actions</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                           @foreach ($abouts as $about)
                               <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $about->title1 }}</td>
                                <td>{{ $about->title2 }}</td>
                                <td>{{ $about->short_description }}</td>
                                <td>{{ $about->experience_years }}</td>
                                <td>{{ $about->happy_customers }}</td>
                                <td>{{ $about->client_satisfaction }}</td>
                                <td>{{ $about->image }}</td>
                                <td>{{ $about->status }}</td>
                                <td>{{ $about->created_at->format('d Y M') }}</td>
                                <td> 
                                     <div class="d-flex justify-content-end flex-shrink-0">
                                        <a href="{{ route('backend.productmanagement.about.show', $about->id) }}" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
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
                                            
                                        
                                        <a href="{{ route('backend.productmanagement.about.edit', $about->id) }}" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
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
                                            
                                        <form method ="POST" action="{{ route('backend.productmanagement.about.destroy', $about->id) }}">
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
                <span class="card-label fw-bolder fs-3 mb-1">Create About</span>  
            </h3>
        </div>
        
            
            <div class="card-body py-3">
                <form action="{{ route('backend.productmanagement.about.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Title-1 <span class="text-danger">*</span></label>
                        <input type="text" class="form-control form-control-solid"  name="title1">
                        @error('title1')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                   </div>
                   <div class="fv-row mb-9 fv-plugins-icon-container">
                    <label class="fs-6 fw-bold mb-2">Title-2 <span class="text-danger">*</span></label>
                    <input type="text" class="form-control form-control-solid"  name="title2">
                    @error('title2')
                    <p class="text-danger">{{ $message }}</p>  
                    @enderror
               </div>
                  
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Short Description</label>
                        <input type="text" class="form-control form-control-solid"  name="short_description">
                        @error('short_description')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Experience year</label>
                        <input type="text" class="form-control form-control-solid"  name="experience_years">
                        @error('experience_years')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Happy Customer </label>
                        <input type="text" class="form-control form-control-solid"  name="happy_customers">
                        @error('happy_customers')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Client Satisfaction</label>
                        <input type="text" class="form-control form-control-solid"  name="client_satisfaction">
                        @error('client_satisfaction')
                        <p class="text-danger">{{ $message }}</p>  
                        @enderror
                    </div>
                    <div class="fv-row mb-9 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold mb-2">Image</label>
                        <input type="file" class="form-control form-control-solid"  name="image">
                        <p>Upload 400x800 Image!</p>
                        @error('image')
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
            

        



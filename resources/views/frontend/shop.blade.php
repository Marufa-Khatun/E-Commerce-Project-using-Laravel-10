@extends('layouts.frontapp')
@section('title', 'Shop')
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="index-2.html">Home</a></li>
            <li>Product Grid</li>
        </ul>
    </div>
</div>


<section class="product_section section_space">
    <h2 class="hidden">Product sidebar</h2>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <aside class="sidebar_section p-0 mt-0">
                    <div class="sb_widget sb_category">
                        <h3 class="sb_widget_title">Categories</h3>
                        <ul class="sb_category_list ul_li_block">
                            @foreach (getcategories() as $category )
                            <li>
                                <a href="{{ route('frontend.shop.category', $category->slug) }}">{{ $category->name }} <span></span></a>
                            </li>
                            @endforeach
                           
                        </ul>
                    </div>

                    <div class="sb_widget">
                        <h3 class="sb_widget_title">Your Filter</h3>
                        <div class="filter_sidebar">
                            

                            <form action="">
                                <div class="fs_widget">
                                    <h3 class="fs_widget_title">Manufacturer</h3>
                                        <ul class="fs_brand_list ul_li_block">
                                            <li>
                                                <div class="checkbox_item">
                                                    <input id="apple_brand" type="checkbox" name="brand_checkbox">
                                                    <label for="apple_brand">Apple <span>(19)</span></label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox_item">
                                                    <input id="asus_brand" type="checkbox" name="brand_checkbox">
                                                    <label for="asus_brand">Asus <span>(1)</span></label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox_item">
                                                    <input id="bank_oluvsen_brand" type="checkbox" name="brand_checkbox">
                                                    <label for="bank_oluvsen_brand">Bank &amp; Oluvsen <span>(1)</span></label>
                                                </div>
                                            </li>
                                        </ul>
                                    
                                </div>
    
                                <div class="fs_widget">
                                    <h3 class="fs_widget_title">Price</h3>
                                        <div class="price-range-area clearfix">
                                            <div class="price-text d-flex align-items-center">
                                                <span>Range:</span>
                                                <input type="text" id="amount" readonly="">
                                            </div>
                                            <div id="slider-range" class="slider-range ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 40%;"></div><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 0%;"></span><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 40%;"></span></div>
                                        </div>
                                   
                                </div>
                            </form>

                            
                        </div>
                    </div>
                </aside>
            </div>

            <div class="col-lg-9">
                <div class="filter_topbar">
                    <div class="row align-items-center">
                        <div class="col col-md-4">
                            <ul class="layout_btns nav" role="tablist">
                                <li>
                                    <button class="active" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"><i class="fal fa-bars"></i></button>
                                </li>
                                <li>
                                    <button data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">
                                        <i class="fal fa-th-large"></i>
                                    </button>
                                </li>
                            </ul>
                        </div>

                        <div class="col col-md-4">
                            <form action="#">
                                <div class="select_option clearfix">
                                    <select style="display: none;">
                                        <option data-display="Defaul Sorting">Select Your Option</option>
                                        <option value="1">Sorting By Name</option>
                                        <option value="2">Sorting By Price</option>
                                        <option value="3">Sorting By Size</option>
                                    </select><div class="nice-select" tabindex="0"><span class="current">Defaul Sorting</span><ul class="list"><li data-value="Select Your Option" data-display="Defaul Sorting" class="option selected">Select Your Option</li><li data-value="1" class="option">Sorting By Name</li><li data-value="2" class="option">Sorting By Price</li><li data-value="3" class="option">Sorting By Size</li></ul></div>
                                </div>
                            </form>
                        </div>

                        <div class="col col-md-4">
                            <div class="result_text">Showing 1-12 of 30 relults</div>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="home" role="tabpanel">
                        <div class="shop-product-area shop-product-area-col">
                            <div class="product-area shop-grid-product-area clearfix">
                                @foreach($products as $product)
                                <div class="grid">
                                    <div class="product-pic">
                                       @if(request()->routeIs('frontend.shop.index') || request()->category == '' && request()->search != '' )
                                        <img src=" {{ asset(@$product->galleries->first()->image_path) }}" 
                                        alt="{{ $product->title }}">
                                        @elseif(request()->category && request()->search)
                                        <img src=" {{ asset(@$product->image) }}" alt="{{ $product->title }}">
                                        @else
                                        <img src=" {{ asset(@$product->image) }}" alt="{{ $product->title }}">
                                        @endif

                                        @if ((($product->price - $product->sale_price) / $product->price) * 100)
                                        <span class="theme-badge-2">{{  number_format((($product->price - $product->sale_price) / $product->price) * 100,0)  }} %Off</span>
                                        @endif
                                       
                                        
                                   
                                        
                                        <div class="actions">
                                            <ul>
                                                <li>
                                                    {{-- <a href="#">
                                                        <svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6">
                                                            <title>Favourite</title>
                                                            <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                    </a> --}}
                                                   
                                                   <form action="{{ route('frontend.wishlist.store', $product->id) }}" method="POST">
                                                    <input type="hidden" name="slug" value="">
                                                    @csrf
                                                    <button type="submit" href="">
                                                            <svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6">
                                                                <title>Favourite</title>
                                                                <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                            </svg>
                                                        </button>
                                                   
                                                    </form>
                                               
                                                </li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4><a href="{{ route('frontend.shop.single', $product->slug) }}">{{ $product->title }}</a></h4>
                                        <p><a href="{{ route('frontend.shop.single', $product->slug) }}">{{ Str::limit($product->short_description, 30, '...') }}</a></p>
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi> <span class="woocommerce-Price-currencySymbol">$</span>{{ $product->sale_price }} </bdi>
                                                </span>
                                            </ins>
                                            <del aria-hidden="true">
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi> <span class="woocommerce-Price-currencySymbol">$</span>{{ $product->price }} </bdi>
                                                </span>
                                            </del>
                                        </span>
                                        <div class="add-cart-area">
                                            <a href="{{ route('frontend.shop.single', $product->slug) }}" >
                                                <button class="add-to-cart">Add to cart</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="pagination_wrap">
                            <ul class="pagination_nav">
                                <li class="active"><a href="#!">01</a></li>
                                <li><a href="#!">02</a></li>
                                <li><a href="#!">03</a></li>
                                <li class="prev_btn">
                                    <a href="#!"><i class="fal fa-angle-left"></i></a>
                                </li>
                                <li class="next_btn">
                                    <a href="#!"><i class="fal fa-angle-right"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="profile" role="tabpanel">
                        <div class="product_layout2_wrap">
                            <div class="product-area-row">
                                @foreach ($products as $product )
                                    
                              
                                <div class="grid clearfix">
                                    <div class="product-pic">
                                        @if ( request()->routeIs('frontend.shop.index'))
                                        <img src=" {{ asset(@$product->galleries->first()->image_path) }}" 
                                        alt="{{ $product->title }}">
                                        @else
                                        <img src=" {{ asset(@$product->image) }}"
                                         alt="{{ $product->title }}">
                                        @endif
                                        <div class="actions">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6">
                                                            <title>Favourite</title>
                                                            <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6">
                                                            <title>Shuffle</title>
                                                            <path d="M21 16.0399H17.7707C15.8164 16.0399 13.9845 14.9697 12.8611 13.1716L10.7973 9.86831C9.67384 8.07022 7.84196 7 5.88762 7L3 7"></path>
                                                            <path d="M21 7H17.7707C15.8164 7 13.9845 8.18388 12.8611 10.1729L10.7973 13.8271C9.67384 15.8161 7.84196 17 5.88762 17L3 17"></path>
                                                            <path d="M19 4L22 7L19 10"></path>
                                                            <path d="M19 13L22 16L19 19"></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="quickview_btn" data-bs-toggle="modal" href="#quickview_popup" role="button" tabindex="0">
                                                        <svg width="48px" height="48px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6">
                                                            <title>Visible (eye)</title>
                                                            <path d="M22 12C22 12 19 18 12 18C5 18 2 12 2 12C2 12 5 6 12 6C19 6 22 12 22 12Z"></path>
                                                            <circle cx="12" cy="12" r="3"></circle>
                                                        </svg>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h4><a href="#">{{  $product->title }} </a></h4>
                                        <p><a href="#">{{  Str::limit($product->short_description, 30, '...') }}  </a></p>
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi> <span class="woocommerce-Price-currencySymbol">$</span>{{ $product->sale_price }} </bdi>
                                                </span>
                                            </ins>
                                            <del aria-hidden="true">
                                                <span class="woocommerce-Price-amount amount">
                                                    <bdi> <span class="woocommerce-Price-currencySymbol">$</span>{{ $product->price }} </bdi>
                                                </span>
                                            </del>
                                        </span>
                                        <div class="add-cart-area">
                                            <button class="add-to-cart">Add to cart</button>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="pagination_wrap">
                            <ul class="pagination_nav">
                                <li class="active"><a href="#!">01</a></li>
                                <li><a href="#!">02</a></li>
                                <li><a href="#!">03</a></li>
                                <li class="prev_btn">
                                    <a href="#!"><i class="fal fa-angle-left"></i></a>
                                </li>
                                <li class="next_btn">
                                    <a href="#!"><i class="fal fa-angle-right"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

  <!-- product quick view modal - start
            ================================================== -->
            <div class="modal fade" id="quickview_popup" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalToggleLabel2">Product Quick View</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="product_details">
                                <div class="container">
                                    <div class="row">
                                        <div class="col col-lg-6">
                                            <div class="product_details_image p-0">
                                                <img src="{{ asset('frontend/images/shop/product_img_12.png')}}" alt>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-6">
                                            <div class="product_details_content">
                                                <h2 class="item_title">Macbook Pro</h2>
                                                <p>
                                                    It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate
                                                </p>
                                                <div class="item_review">
                                                    <ul class="rating_star ul_li">
                                                        <li><i class="fas fa-star"></i></li>
                                                        <li><i class="fas fa-star"></i></li>
                                                        <li><i class="fas fa-star"></i></li>
                                                        <li><i class="fas fa-star"></i></li>
                                                        <li><i class="fas fa-star"></i></li>
                                                    </ul>
                                                    <span class="review_value">3 Rating(s)</span>
                                                </div>
                                                <div class="item_price">
                                                    <span>$620.00</span>
                                                    <del>$720.00</del>
                                                </div>
                                                <hr>
                                                <div class="item_attribute">
                                                    <h3 class="title_text">Options <span class="underline"></span></h3>
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col col-md-6">
                                                                <div class="select_option clearfix">
                                                                    <h4 class="input_title">Size *</h4>
                                                                    <select>
                                                                        <option data-display="- Please select -">Choose A Option</option>
                                                                        <option value="1">Some option</option>
                                                                        <option value="2">Another option</option>
                                                                        <option value="3" disabled>A disabled option</option>
                                                                        <option value="4">Potato</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col col-md-6">
                                                                <div class="select_option clearfix">
                                                                    <h4 class="input_title">Color *</h4>
                                                                    <select>
                                                                        <option data-display="- Please select -">Choose A Option</option>
                                                                        <option value="1">Some option</option>
                                                                        <option value="2">Another option</option>
                                                                        <option value="3" disabled>A disabled option</option>
                                                                        <option value="4">Potato</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="repuired_text">Repuired Fiields *</span>
                                                    </form>
                                                </div>
                                                
                                                <div class="quantity_wrap">
                                                    <form action="#">
                                                        <div class="quantity_input">
                                                            <button type="button" class="input_number_decrement">
                                                                <i class="fal fa-minus"></i>
                                                            </button>
                                                            <input class="input_number" type="text" value="1">
                                                            <button type="button" class="input_number_increment">
                                                                <i class="fal fa-plus"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                    <div class="total_price">
                                                        Total: $620,99
                                                    </div>
                                                </div>
                                                
                                                <ul class="default_btns_group ul_li">
                                                    <li><a class="addtocart_btn" href="#!">Add To Cart</a></li>
                                                    <li><a href="#!"><i class="far fa-compress-alt"></i></a></li>
                                                    <li><a href="#!"><i class="fas fa-heart"></i></a></li>
                                                </ul>
                                                
                                                <ul class="default_share_links ul_li">
                                                    <li>
                                                        <a class="facebook" href="#!">
                                                            <span><i class="fab fa-facebook-square"></i> Like</span>
                                                            <small>10K</small>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="twitter" href="#!">
                                                            <span><i class="fab fa-twitter-square"></i> Tweet</span>
                                                            <small>15K</small>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="google" href="#!">
                                                            <span><i class="fab fa-google-plus-square"></i> Google+</span>
                                                            <small>20K</small>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="share" href="#!">
                                                            <span><i class="fas fa-plus-square"></i> Share</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product quick view modal - end
            ================================================== -->
@endsection
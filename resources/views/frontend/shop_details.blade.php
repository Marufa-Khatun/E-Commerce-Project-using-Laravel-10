@extends('layouts.frontapp')
@section('title', $product->title)
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="{{ route('frontend.index') }}">Home</a></li>
            <li>{{ $product->title }}</li>
        </ul>
    </div>
</div>
<section class="product_details section_space pb-0">
    <div class="container">
        <div class="row">
            <div class="col col-lg-6">
                <div class="product_details_image">
                    <div class="details_image_carousel">
                        @foreach ($product->galleries as $gallerie )
                        <div class="slider_item">
                            <img src="{{ asset(@$gallerie->image_path) }}" alt="{{ $product->title }}">
                        </div>
                        @endforeach
                       
                    </div>

                    <div class="details_image_carousel_nav">
                        @foreach ($product->galleries as $gallerie )
                        <div class="slider_item">
                            <img src="{{ asset(@$gallerie->image_path) }}" alt="{{ $product->title }}">
                        </div>
                        @endforeach
                       
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <form action="{{ route('frontend.product.cart') }}" method="POST">
                    @csrf
                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                  

                <div class="product_details_content">
                    <h2 class="item_title">{{ $product->title }}</h2>
                    <p>{{ $product->short_description }}</p>
                    {{-- <div class="item_review">
                        <ul class="rating_star ul_li">
                            <li><i class="fas fa-star"></i>></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star-half-alt"></i></li>
                        </ul>
                        <span class="review_value">3 Rating(s)</span>
                    </div> --}}

                    <div class="item_price">
                        @if ( $product->sale_price)
                        <span>{{ $product->sale_price }}</span>
                        <del>{{ $product->price }}</del> 
                        @else
                        <span>{{ $product->price }}</span> 
                        @endif
                       
                    </div>
                    <hr>

                    <div class="item_attribute">
                        <h3 class="title_text">Options <span class="underline"></span></h3>
                        <form action="#">
                            <div class="row">
                                <div class="col col-md-6">
                                    <div class="select_option clearfix">
                                        <h4 class="input_title">Color *</h4>
                                        <select id="select_color" class="nice_select" name="color_id">
                                            <option data-display="- Please select -">Choose A Option</option>
                                           @foreach ($colors as $color)
                                           <option value="{{ $color->id }}">{{ $color->name }}</option>
                                               
                                           @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col col-md-6">
                                    <div class="select_option clearfix">
                                       
                                        <h4 class="input_title">Size *</h4>
                                        <select class="form-control" id="select_size" name="size_id">
                                           
                                            
                                        </select>
                                    </div>
                                </div>
                               
                            </div>
                            <span class="repuired_text">Repuired Fiields *</span>
                        </form>
                    </div>

                    <div class="quantity_wrap">
                     
                            <div class="quantity_input">
                                <button type="button" class="input_number_decrement">
                                    <i class="fal fa-minus"></i>
                                </button>
                                <input class="input_number" type="text" value="1" name="requested_quantity">
                                <button type="button" class="input_number_increment">
                                    <i class="fal fa-plus"></i>
                                </button>
                            </div>
                            <p class="mt-2 d-none available_quantity_text ">Available Quantity <span id="available_quantity">0</span></p>
                       

                        <div class="total_price">Total: $ <span id="product_sale_price">
                            @if ( $product->sale_price)
                            {{ $product->sale_price }}
                            
                            @else
                            {{ $product->price }}
                            @endif
                        </span>
                    </div>
                    </div>

                    <ul class="default_btns_group ul_li">
                        <li><button type="submit" class="btn btn_primary addtocart_btn" >Add To Cart</button></li>
                        <li><a href="#!"><i class="far fa-compress-alt"></i></a></li>
                        <li><a href="#!"><i class="fas fa-heart"></i></a></li>
                    </ul>

                   {{--  <ul class="default_share_links ul_li">
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
                    </ul> --}}
                </div>
            </form>
            </div>
        </div>

        <div class="details_information_tab">
            <ul class="tabs_nav nav ul_li" role=tablist>
                <li>
                    <button class="active" data-bs-toggle="tab" data-bs-target="#description_tab" type="button" role="tab" aria-controls="description_tab" aria-selected="true">
                    Description
                    </button>
                </li>
                <li>
                    <button data-bs-toggle="tab" data-bs-target="#additional_information_tab" type="button" role="tab" aria-controls="additional_information_tab" aria-selected="false">
                    Additional information
                    </button>
                </li>
                <li>
                    <button data-bs-toggle="tab" data-bs-target="#reviews_tab" type="button" role="tab" aria-controls="reviews_tab" aria-selected="false">
                    Reviews(2)
                    </button>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane fade show active" id="description_tab" role="tabpanel">
                    {!! $product->description !!}
                </div>

                <div class="tab-pane fade" id="additional_information_tab" role="tabpanel">
                    {!! $product->add_info !!}
                </div>

                <div class="tab-pane fade" id="reviews_tab" role="tabpanel">
                    <div class="average_area">
                        <h4 class="reviews_tab_title">Average Ratings</h4>
                        <div class="row align-items-center">
                            <div class="col-md-5 order-last">
                                <div class="average_rating_text">

                                    @php
                                        $rating=floor($productReview->avg('rating'));
                                        $rating2=$productReview->avg('rating')-$rating;

                                        echo $rating;
                                        echo $rating2;
                                    @endphp

                                    <ul class="rating_star ul_li_center">
                                      
                                        @for ($i=0; $i<5; $i++)
                                        @if($rating>$i)
                                        <li><i class="fas fa-star"></i></li>
                                        @elseif($rating2)
                                        <li>
                                            @php
                                                $rating2=0;
                                            @endphp
                                            <i class="fas fa-star-half-alt"></i>
                                        </li>
                                        @else
                                        <li><i class="fal fa-star"></i></li>
                                        @endif
                                        @endfor


                                       {{--  <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star-half-alt"></i></li> --}}
                                    </ul>
                                    <p class="mb-0">
                                    Average Star Rating: <span>{{ $productReview->avg('rating') }} out of 5</span>
                                   ( {{ $productReview->count('rating') }}  Vote)
                                    </p>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="product_ratings_progressbar">
                                    <ul class="five_star ul_li">
                                        <li><span>5 Star</span></li>
                                        <li><div class="progress_bar"></div></li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </li>
                                    </ul>
                                    <ul class="four_star ul_li">
                                        <li><span>4 Star</span></li>
                                        <li><div class="progress_bar"></div></li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fal fa-star"></i>
                                        </li>
                                    </ul>
                                    <ul class="three_star ul_li">
                                        <li><span>3 Star</span></li>
                                        <li><div class="progress_bar"></div></li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                        </li>
                                    </ul>
                                    <ul class="two_star ul_li">
                                        <li><span>2 Star</span></li>
                                        <li><div class="progress_bar"></div></li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                        </li>
                                    </ul>
                                    <ul class="one_star ul_li">
                                        <li><span>1 Star</span></li>
                                        <li><div class="progress_bar"></div></li>
                                        <li>
                                            <i class="fas fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                            <i class="fal fa-star"></i>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="customer_reviews">
                        <h4 class="reviews_tab_title">2 reviews for this product</h4>
                        <div class="customer_review_item clearfix">
                            <div class="customer_image">
                                <img src="assets/images/team/team_1.jpg" alt="image_not_found">
                            </div>
                            <div class="customer_content">
                                <div class="customer_info">
                                    <ul class="rating_star ul_li">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star-half-alt"></i></li>
                                    </ul>
                                    <h4 class="customer_name">Aonathor troet</h4>
                                    <span class="comment_date">JUNE 2, 2021</span>
                                </div>
                                <p class="mb-0">Nice Product, I got one in black. Goes with anything!</p>
                            </div>
                        </div>

                        <div class="customer_review_item clearfix">
                            <div class="customer_image">
                                <img src="assets/images/team/team_2.jpg" alt="image_not_found">
                            </div>
                            <div class="customer_content">
                                <div class="customer_info">
                                    <ul class="rating_star ul_li">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star-half-alt"></i></li>
                                    </ul>
                                    <h4 class="customer_name">Danial obrain</h4>
                                    <span class="comment_date">JUNE 2, 2021</span>
                                </div>
                                <p class="mb-0">
                                Great product quality, Great Design and Great Service.
                                </p>
                            </div>
                        </div>
                    </div>


                    @if(in_array($product->id, $userOrders) && Auth::id())
                    <div class="customer_review_form">
                        <h4 class="reviews_tab_title">Add a review</h4>
                        <form action="#">
                            <div class="your_ratings">
                                <h5>Your Ratings:</h5>
                                <button type="button"><i class="fal fa-star"></i></button>
                                <button type="button"><i class="fal fa-star"></i></button>
                                <button type="button"><i class="fal fa-star"></i></button>
                                <button type="button"><i class="fal fa-star"></i></button>
                                <button type="button"><i class="fal fa-star"></i></button>
                            </div>
                            <div class="form_item">
                                <textarea name="comment" placeholder="Your Review*"></textarea>
                            </div>
                            <button type="submit" class="btn btn_primary">Submit Now</button>
                        </form>
                    </div>
                    @endif


                   
                 
                  
                </div>
            </div>
        </div>
    </div>
</section>
<section class="related_products_section section_space">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="best-selling-products related-product-area">
                    <div class="sec-title-link">
                        <h3>Related products</h3>
                        <div class="view-all"><a href="#">View all<i class="fal fa-long-arrow-right"></i></a></div>
                    </div>
                    <div class="product-area clearfix">
                        <div class="grid">
                            <div class="product-pic">
                                <img src="assets/images/shop/product_img_12.png" alt="">
                                <div class="actions">
                                    <ul>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Favourite</title> <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Shuffle</title> <path d="M21 16.0399H17.7707C15.8164 16.0399 13.9845 14.9697 12.8611 13.1716L10.7973 9.86831C9.67384 8.07022 7.84196 7 5.88762 7L3 7"></path> <path d="M21 7H17.7707C15.8164 7 13.9845 8.18388 12.8611 10.1729L10.7973 13.8271C9.67384 15.8161 7.84196 17 5.88762 17L3 17"></path> <path d="M19 4L22 7L19 10"></path> <path d="M19 13L22 16L19 19"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a class="quickview_btn" data-bs-toggle="modal" href="#quickview_popup" role="button" tabindex="0"><svg width="48px" height="48px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Visible (eye)</title> <path d="M22 12C22 12 19 18 12 18C5 18 2 12 2 12C2 12 5 6 12 6C19 6 22 12 22 12Z"></path> <circle cx="12" cy="12" r="3"></circle> </svg></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="details">
                                <h4><a href="#">Macbook Pro</a></h4>
                                <p><a href="#">Apple MacBook Pro13.3″ Laptop with Touch ID </a></p>
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
                                            <bdi>
                                                <span class="woocommerce-Price-currencySymbol">$</span>471.48
                                            </bdi>
                                        </span>
                                    </ins>
                                </span>
                                <div class="add-cart-area">
                                    <button class="add-to-cart">Add to cart</button>
                                </div>
                            </div>
                        </div>
                        <div class="grid">
                            <div class="product-pic">
                                <img src="assets/images/shop/product-img-21.png" alt="">
                                <span class="theme-badge">Sale</span>
                                <div class="actions">
                                    <ul>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Favourite</title> <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Shuffle</title> <path d="M21 16.0399H17.7707C15.8164 16.0399 13.9845 14.9697 12.8611 13.1716L10.7973 9.86831C9.67384 8.07022 7.84196 7 5.88762 7L3 7"></path> <path d="M21 7H17.7707C15.8164 7 13.9845 8.18388 12.8611 10.1729L10.7973 13.8271C9.67384 15.8161 7.84196 17 5.88762 17L3 17"></path> <path d="M19 4L22 7L19 10"></path> <path d="M19 13L22 16L19 19"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a class="quickview_btn" data-bs-toggle="modal" href="#quickview_popup" role="button" tabindex="0"><svg width="48px" height="48px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Visible (eye)</title> <path d="M22 12C22 12 19 18 12 18C5 18 2 12 2 12C2 12 5 6 12 6C19 6 22 12 22 12Z"></path> <circle cx="12" cy="12" r="3"></circle> </svg></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="details">
                                <h4><a href="#">Apple Watch</a></h4>
                                <p><a href="#">Apple Watch Series 7 case Pair any band </a></p>
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
                                            <bdi>
                                                <span class="woocommerce-Price-currencySymbol">$</span>471.48
                                            </bdi>
                                        </span>
                                    </ins>
                                </span>
                                <div class="add-cart-area">
                                    <button class="add-to-cart">Add to cart</button>
                                </div>
                            </div>
                        </div>
                        <div class="grid">
                            <div class="product-pic">
                                <img src="assets/images/shop/product-img-22.png" alt="">
                                <span class="theme-badge-2">12% off</span>
                                <div class="actions">
                                    <ul>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Favourite</title> <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Shuffle</title> <path d="M21 16.0399H17.7707C15.8164 16.0399 13.9845 14.9697 12.8611 13.1716L10.7973 9.86831C9.67384 8.07022 7.84196 7 5.88762 7L3 7"></path> <path d="M21 7H17.7707C15.8164 7 13.9845 8.18388 12.8611 10.1729L10.7973 13.8271C9.67384 15.8161 7.84196 17 5.88762 17L3 17"></path> <path d="M19 4L22 7L19 10"></path> <path d="M19 13L22 16L19 19"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a class="quickview_btn" data-bs-toggle="modal" href="#quickview_popup" role="button" tabindex="0"><svg width="48px" height="48px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Visible (eye)</title> <path d="M22 12C22 12 19 18 12 18C5 18 2 12 2 12C2 12 5 6 12 6C19 6 22 12 22 12Z"></path> <circle cx="12" cy="12" r="3"></circle> </svg></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="details">
                                <h4><a href="#">Mac Mini</a></h4>
                                <p><a href="#">Apple MacBook Pro13.3″ Laptop with Touch ID </a></p>
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
                                            <bdi>
                                                <span class="woocommerce-Price-currencySymbol">$</span>471.48
                                            </bdi>
                                        </span>
                                    </ins>
                                    <del aria-hidden="true">
                                        <span class="woocommerce-Price-amount amount">
                                            <bdi>
                                                <span class="woocommerce-Price-currencySymbol">$</span>904.21
                                            </bdi>
                                        </span>
                                    </del>
                                </span>
                                <div class="add-cart-area">
                                    <button class="add-to-cart">Add to cart</button>
                                </div>
                            </div>
                        </div>
                        <div class="grid">
                            <div class="product-pic">
                                <img src="assets/images/shop/product-img-23.png" alt="">
                                <span class="theme-badge">Sale</span>
                                <div class="actions">
                                    <ul>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Favourite</title> <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a href="#"><svg role="img" xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 24 24" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Shuffle</title> <path d="M21 16.0399H17.7707C15.8164 16.0399 13.9845 14.9697 12.8611 13.1716L10.7973 9.86831C9.67384 8.07022 7.84196 7 5.88762 7L3 7"></path> <path d="M21 7H17.7707C15.8164 7 13.9845 8.18388 12.8611 10.1729L10.7973 13.8271C9.67384 15.8161 7.84196 17 5.88762 17L3 17"></path> <path d="M19 4L22 7L19 10"></path> <path d="M19 13L22 16L19 19"></path> </svg></a>
                                        </li>
                                        <li>
                                            <a class="quickview_btn" data-bs-toggle="modal" href="#quickview_popup" role="button" tabindex="0"><svg width="48px" height="48px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke="#2329D6" stroke-width="1" stroke-linecap="square" stroke-linejoin="miter" fill="none" color="#2329D6"> <title>Visible (eye)</title> <path d="M22 12C22 12 19 18 12 18C5 18 2 12 2 12C2 12 5 6 12 6C19 6 22 12 22 12Z"></path> <circle cx="12" cy="12" r="3"></circle> </svg></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="details">
                                <h4><a href="#">iPad mini</a></h4>
                                <p><a href="#">The ultimate iPad experience all over the world </a></p>
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
                                            <bdi>
                                                <span class="woocommerce-Price-currencySymbol">$</span>471.48
                                            </bdi>
                                        </span>
                                    </ins>
                                </span>
                                <div class="add-cart-area">
                                    <button class="add-to-cart">Add to cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
    </div>
</section>
@endsection


@section('script')
<script>
    $(function($){
        var product_id = "{{ $product->id }}";
        var price ="{{ $product->price }}";
        var salePrice = "{{ $product->sale_price }}";
        var addPrice = salePrice ?? price ;
        var available_quantity = 0;
        var priceTotal = 0;
        var input_number_value  =$('.input_number').val();
        var select_color =  $('#select_color');
        var select_size =  $('#select_size');
        var available_quantity_text =  $('.available_quantity_text');


        select_color.on('change', function(){
            var color_id = $(this).val();
           
            $.ajax({
                url: "{{ route('frontend.select.color.wise.size') }}",
                type: 'GET',
                dataType: 'json',
                data: {
                    product_id,
                    color_id,
                   
                },
                success: function(data) {
                    select_size.html(data);
                }
            });
            available_quantity_text.addClass('d-none');
            $('#product_sale_price').html(addPrice); 
        }); 

        select_size.on('change', function(){
            var size_id = $(this).val();
            var color_id = select_color.val();
           
            $.ajax({
                url: "{{ route('frontend.select.color.size.wise.inventory') }}",
            
                type: 'GET',
                dataType: 'json',
                data: {
                    product_id,
                    color_id,
                    size_id
                },
                success: function(data) {
                   console.log(data);
                 
                   var addSalePrice = parseFloat(data.add_price ?? 0) +  parseFloat(addPrice);
                   $('#available_quantity').html(data.quantity); 
                   $('#product_sale_price').html(addSalePrice.toFixed(2)); 
                   available_quantity = data.quantity;
                   priceTotal = addSalePrice;

                   $('.input_number').val(1);
                }
            });

            available_quantity_text.removeClass('d-none');
            available_quantity_text.addClass('d-block');

        }); 

        $(document).on('click', '.input_number_increment', function(){

            if(available_quantity > input_number_value){
                var input_number_value_inc = ++input_number_value;
            $('.input_number').val(input_number_value_inc);
            $('.input_number_decrement').attr('disabled',false);

            var netTotal = priceTotal* input_number_value_inc;
            $('#product_sale_price').html(netTotal.toFixed(2));

            }else{
                $('.input_number').val(available_quantity);
                input_number_value_inc = 1;
            }

            
        });

        $(document).on('click', '.input_number_decrement', function(){

            if(input_number_value > 1){
            var input_number_value_dec = --input_number_value;
            $('.input_number').val(input_number_value_dec);
          
            var netTotal = priceTotal* input_number_value_dec;
            $('#product_sale_price').html(netTotal.toFixed(2));

            }
            else
            {
                $('.input_number').val(1);
                $(this).attr('disabled',true);
                input_number_value_dec = 1;
            }
        });
    });
</script>
    
@endsection
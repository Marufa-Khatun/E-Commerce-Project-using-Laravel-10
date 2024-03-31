@extends('layouts.frontapp')
@section('title', 'Contact Us')
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="index-2.html">Home</a></li>
            <li>Product Grid</li>
        </ul>
    </div>
</div>


<div class="map_section">
    @foreach ($contacts as $contact )
  <iframe src="{{ $contact->google_link }}"> 
     
      
    </iframe> 
    @endforeach
</div>


<section class="contact_section section_space">
    <div class="container">
        <div class="row">
            @foreach ($contacts as $contact )
                
            
            <div class="col col-lg-6">
                <div class="contact_info_wrap">
                    <h3 class="contact_title">{{ $contact->title }}</span></h3>
                   {{--  <div class="decoration_image">
                        <img src="assets/images/leaf.png" alt="image_not_found">
                    </div> --}}
                    <p>{{ $contact->short_description }}</p>
                    <div class="row">
                        <div class="col col-md-6">
                            <div class="contact_info_list">
                                <h4 class="list_title">{{ $contact->list_title }}</h4>
                                <ul class="ul_li_block">
                                    
                                    <li>{{ $contact->location }}</li>
                                    <li>{{ $contact->open_closes_time }}</li>
                                    <li>{{ $contact->email }}</li>
                                    <li>{{ $contact->phone }}</li>
                                </ul>
                            </div>
                        </div>

                        {{-- <div class="col col-md-6">
                            <div class="contact_info_list">
                                <h4 class="list_title">USA Exchanger</h4>
                                <ul class="ul_li_block">
                                    <li>Dhaka In Twin Tower Concord </li>
                                    <li>Shopping Complex</li>
                                    <li>Open  Closes 8:30PM </li>
                                    <li>yourinfo@gmail.com</li>
                                    <li>(1200)-0989-568-331</li>
                                </ul>
                            </div>
                        </div> --}}
                    </div>
                </div>
            </div>

            <div class="col col-lg-6">
                <div class="contact_info_wrap">
                    <h3 class="contact_title">{{ $contact->touch_title }}</span></h3>
                   {{--  <div class="decoration_image">
                        <img src="assets/images/leaf.png" alt="image_not_found">
                    </div> --}}
                    <p>{{ $contact->touch_description }}</p>
                    
                    @endforeach
                   
                    <form action="{{ route('frontend.application.store') }}" method="POST">
                        @csrf
                        <div class="form_item">
                            <input {{-- id="contact-form-name" --}} type="text" name="name" placeholder="Your Name">
                        </div>
                        <div class="row">
                            <div class="col col-md-6 col-sm-6">
                                <div class="form_item">
                                <input  type="email" name="email" placeholder="Your Email">
                            </div>
                            </div>
                            <div class="col col-md-6 col-sm-6">
                                <div class="form_item">
                                    <input type="text" name="subject" placeholder="Your Subject">
                                </div>
                            </div>
                        </div>
                        <div class="form_item">
                            <textarea name="message" placeholder="Message"></textarea>
                        </div>
                        <div class="form_item">
                            {!! captcha_img('math') !!}

                            <input type="text" name="captcha" required>
                            @error('captcha')
                            <p class="text-danger">{{ $message }}</p>  
                            @enderror
                        </div>
                        <button type="submit" class="btn btn_dark">Send Message</button>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
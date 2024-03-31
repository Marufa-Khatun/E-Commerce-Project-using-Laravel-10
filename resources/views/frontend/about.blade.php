@extends('layouts.frontapp')
@section('title', 'About Us')
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="index-2.html">Home</a></li>
            <li>Product Grid</li>
        </ul>
    </div>
</div>

<section class="about_section section_space">
    <div class="container">
        @foreach ($abouts as $about)
        <div class="row align-items-center">
            <div class="col col-md-6 order-last">
                <div class="about_image">
                    <img src="{{ $about->image }}">
                </div>
            </div>
           
            <div class="col col-md-6">
                <div class="about_content">
                    <h2 class="about_small_title text-uppercase">{{ $about->title1 }}</h2>
                    <h3 class="about_title">{{ $about->title2 }}</h3>
                    <p>
                        {{ $about->short_description }}
                    </p>
                    <ul class="counter_wrap ul_li">
                        <li>
                            <span class="counter">{{ $about->experience_years }}</span>
                            <small>Years Experience</small>
                        </li>
                        <li>
                            <span><strong class="counter">{{ $about->happy_customers }}</strong></span>
                            <small>Happy Customers</small>
                        </li>
                        <li>
                            <span><strong class="counter">{{ $about->client_satisfaction }}</strong>%</span>
                            <small>Clients Satisfaction</small>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        @endforeach
       
    </div>
</section>

<section class="service_section bg_gray section_space">
    <div class="container">
        <div class="row justify-content-center">
            @foreach ($services as $service)
                
         
            <div class="col col-lg-4 col-md-6 col-sm-6">
                <div class="service_boxed">
                    <div class="item_icon">
                        <i class="icon icon-Wrench"></i>
                        <i class="icon icon-Wrench"></i>
                    </div>
                    <h3 class="item_title"> {{ $service->title }} </h3>
                    <p> {{ $service->short_description }}</p>
                </div>
            </div>
            @endforeach

          
        </div>
    </div>
</section>

<section class="team_section section_space">
    <div class="container"><div class="row">
            <div class="col col-lg-6 col-md-8 col-sm-10">
                <div class="team_section_title">
                    <h2 class="title_text">Meet Our Team</h2>
                </div>
            </div>
      
        
        </div>

        <div class="row justify-content-center">
            @foreach ($teams as  $team )
                
           
            <div class="col col-lg-3 col-md-4 col-sm-6">
                <div class="team_item">
                    <div class="team_image">
                        <img src="{{ $team->image }}">
                    </div>
                    <div class="team_content">
                        <h3 class="team_member_name">{{ $team->name }}</h3>
                        <span class="team_member_title">{{ $team->designation }}</span>
                    </div>
                </div>
            </div>
            @endforeach

            {{-- <div class="col col-lg-3 col-md-4 col-sm-6">
                <div class="team_item">
                    <div class="team_image">
                        <img src="assets/images/team/team_2.jpg" alt="image_not_found">
                    </div>
                    <div class="team_content">
                        <h3 class="team_member_name">John Swim</h3>
                        <span class="team_member_title">Fashion Designer</span>
                    </div>
                </div>
            </div>

            <div class="col col-lg-3 col-md-4 col-sm-6">
                <div class="team_item">
                    <div class="team_image">
                        <img src="assets/images/team/team_3.jpg" alt="image_not_found">
                    </div>
                    <div class="team_content">
                        <h3 class="team_member_name">Harry Dor</h3>
                        <span class="team_member_title">CEO/Founder</span>
                    </div>
                </div>
            </div>

            <div class="col col-lg-3 col-md-4 col-sm-6">
                <div class="team_item">
                    <div class="team_image">
                        <img src="assets/images/team/team_4.jpg" alt="image_not_found">
                    </div>
                    <div class="team_content">
                        <h3 class="team_member_name">John Swim</h3>
                        <span class="team_member_title">Fashion Designer</span>
                    </div>
                </div>
            </div> --}}
        </div>

    </div>
</section>

@endsection
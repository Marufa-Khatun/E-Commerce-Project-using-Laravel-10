@extends('layouts.frontapp')
@section('title', 'Home')
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="{{ route('frontend.index') }}">Blog</a></li>
            <li>Cart</li>
        </ul>
    </div>
</div>

<section class="cart_section section_space">
    <div class="container">
        <div class="cart_update_wrap">
            <p class="mb-0"><i class="fal fa-check-square"></i> Blog.</p>
        </div>

        @foreach ($datas as $post)
            <div>
                <h2>{{ $post->title }}</h2>
                <p>{{ $post->body }}</p>
            </div>
        @endforeach
    </div>
</section>
@endsection
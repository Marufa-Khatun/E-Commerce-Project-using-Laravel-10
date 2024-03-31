@extends('layouts.frontenddashboard')
@section('title', 'Product Review')
@section('content')

<div class="account_content_area">
    <h3>My Review Product</h3>
    <table class="table table-bordered table-hover">
        <tr>
            <th>Order Id</th>
            <th>Title</th>
            <th>Price</th>
            <th>Rating</th>
            <th>Comment</th>
            <th>Action</th>
        </tr>
        @foreach ($orders as $order)
        <tr>
            <td>{{ $order->id }}</td>
        @foreach ($order->orderDetails as $orderDetail )
            <td>{{ $orderDetail->product->title }}</td>
            <td>{{ $orderDetail->price }}</td>
            <td>{{ $orderDetail->review->rating ?? "-" }}</td>
            <td>{{ $orderDetail->review->comments ?? "-" }}</td>
            
            <td>
                @if ($orderDetail->review)
                <a href="{{ route('frontend.product-review.update', $orderDetail->id) }}">Update Rating</a>
                @else
                <a href="{{ route('frontend.product-review.create',
                ['order_detail_id'=>$orderDetail->id,'product_id'=>$orderDetail->product->id]) }}">
                Add Rating</a> 
                @endif
                
            </td>
        @endforeach
        </tr>
        @endforeach
        
        
    </table>
</div>
@endsection
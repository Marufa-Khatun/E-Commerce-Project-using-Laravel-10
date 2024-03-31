@extends('layouts.frontapp')
@section('title','Product Cart') 
@section('content')
<div class="breadcrumb_section">
    <div class="container">
        <ul class="breadcrumb_nav ul_li">
            <li><a href="{{ route('frontend.index') }}">Home</a></li>
            <li>Cart</li>
        </ul>
    </div>
</div>

<section class="cart_section section_space">
    <div class="container">
        <div class="cart_update_wrap">
            <p class="mb-0"><i class="fal fa-check-square"></i> Shipping costs updated.</p>
        </div>

        <div class="cart_table">
            <table class="table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Quantity</th>
                        <th class="text-center">Total</th>
                        <th class="text-center">Remove</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach (clientCartDetails() as $cart)
                        
                 
                    <tr class="cart_row">
                        <td>
                            <div class="cart_product ">
                                <img src="{{ asset($cart->product->galleries->first()->image_path) }}" 
                                alt="{{ $cart->product->title }}">
                                <h3><a href="{{ route('frontend.shop.single', $cart->product->id) }}l">{{ $cart->product->title }}</a></h3>
                            </div>
                        </td>
                        <td class="text-center">$<span class="price_text item_p">{{ $cart->price + $cart->add_price }}</span></td>
                        <td class="text-center">
                            
                                <div class="quantity_input">
                                    <input type="hidden" name="cart_id" id="cart_id" value="{{ $cart->id }}"> 

                                    <button type="submit" class="input_number_decrement">
                                        <i class="fal fa-minus"></i>
                                    </button>

                                    <input class="input_number" type="text" value="{{ $cart->quantity }}">

                                    <button type="button" class="input_number_increment">
                                        <i class="fal fa-plus"></i>
                                    </button>

                                </div>
                           
                        </td>
                        <td class="text-center">$<span class="price_text total_price">{{ $cart->total_price }}</span></td>
                        <td class="text-center ">
                           {{--  <a href="{{ route('frontend.product.cart.destroy', $cart->id) }}" type="button" class="remove_btn d-inline cartDelete"><i class="fal fa-trash-alt"></i></a> --}}

                            <form action="{{ route('frontend.product.cart.destroy', $cart->id) }}" method="POST" class="cartDelete ">
                                @csrf
                                @method('delete')
                                    <button type="submit" class="remove_btn d-inline "><i class="fal fa-trash-alt"></i></button>
                                </form>

                        </td>



                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="cart_btns_wrap">
            <div class="row">
                <div class="col col-lg-6">
                    <form action="{{ route('frontend.product.cart.apply.coupon') }}" method="POST">
                        @csrf
                        <div class="coupon_form form_item mb-0">
                            <input type="text" name="coupon" value="{{ old('coupon') }}" placeholder="Coupon Code...">
                            <button type="submit" class="btn btn_dark">Apply Coupon</button>
                            <div class="info_icon">
                                <i class="fas fa-info-circle" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Your Info Here" aria-label="Your Info Here"></i>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col col-lg-6">
                    <ul class="btns_group ul_li_right">
                        <li><a class="btn border_black" href="{{ route('frontend.product.cart.list') }}">Update Cart</a></li>
                        <li><a class="btn btn_dark" href="{{ route('frontend.product.checkout.index') }}">Prceed To Checkout</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col col-lg-6">
                <div class="calculate_shipping">
                    <h3 class="wrap_title">Calculate Shipping <span class="icon"><i class="far fa-arrow-up"></i></span></h3>
                    
                        <div class="select_option clearfix">
                            <select class="nice_select shipping_setup">
                                <option data-display="Select Your Currency">Select Your Option</option>
                               
                              @foreach ($shippingSetups as $shippingSetup )
                              <option value="{{ $shippingSetup->id  }}" >{{ $shippingSetup->shipping_name }}</option> 
                              @endforeach
                            </select>
                        </div>
                        {{-- <button type="submit" class="btn btn_primary rounded-pill">Update Total</button> --}}
                    
                </div>
            </div>

            <div class="col col-lg-6">
                <div class="cart_total_table">
                    <h3 class="wrap_title">Cart Totals</h3>
                    <ul class="ul_li_block">
                        <li>
                            <span>Cart Subtotal</span>
                            <span>${{ $cartTotal }}</span>
                        </li>
                        <li>
                            <span>Shipping and Handling</span>
                            <span class="shipping_charge">Free Shipping</span>
                        </li>
                        @if ($coupon_discount)
                        <li>
                            <span>Coupon Discount</span>
                            <span> -{{ $coupon_discount }}</span>
                        </li>
                        @endif
                        <li>
                            <span>Order Total</span>
                            <p>$<span class="net_total_price">{{ $cartTotal - $coupon_discount }}</span></p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('script')
<script>
   $(function(){
       $('.cartDelete').on('click', function(e){
           e.preventDefault();
          /* var submiturl= $(this).attr('href');
            console.log(submiturl); */  

           Swal.fire({
           title: "Are you sure?",
           text: "You won't be able to revert this!",
           icon: "warning",
           showCancelButton: true,
           confirmButtonColor: "#3085d6",
           cancelButtonColor: "#d33",
           confirmButtonText: "Yes, delete it!"
           }).then((result) => {
           if (result.isConfirmed) {
               $(this).submit();
       
           }
           });
        });
   });

    //shipping charge
   $(document).on('change', '.shipping_setup', function() {
    var shipping_setup = $(this).val();
    var shipping_charge = $('.shipping_charge');
    var total_price = "{{ $cartTotal - $coupon_discount }}";
    $.ajax({
            url: "{{ route('frontend.product.cart.shipping.charge')  }}",
            type: 'GET',
            data: {
                shipping_setup_id: shipping_setup,
               
            },
           success: function(data){
            console.log(data.add_price);
            if(data.add_price && data.add_price !=''){
                shipping_charge.html(data.add_price);
                $('.net_total_price').html(parseFloat(total_price) + parseFloat(data.add_price));
            }else{
                shipping_charge.html('Free Shipping');
                $('.net_total_price').html(total_price);
            }
           }
        });
        
   });

   //quantity increment and decrement
   $(document).on('click', '.input_number_increment', function(){

        var user = "{{ auth()->user()->id }}";
        var parent = $(this).parents('.cart_row');
        var input_number = parent.find('.input_number');
        var cart_id = parent.find('#cart_id').val();
        var price = parent.find('.item_p').html();
        var total_price = parent.find('.total_price');
        var thisQuantity = input_number.val();

    
        var input_number_value_inc = parseInt(thisQuantity) + 1;
        input_number.val(input_number_value_inc);
       
        var netTotal = parseFloat(price)*input_number_value_inc;
        total_price.html(netTotal);

        $.ajax({
            url: "{{ route('frontend.product.cart.quantity.update')  }}",
            type: 'GET',
            data: {
                quantity: input_number_value_inc,
                total: netTotal,
                user_id: user,
                cart_id: cart_id,
            },
           
        });
        
    
        
        

   /*  if(available_quantity > input_number_value){
        var input_number_value_inc = ++input_number_value;
    $('.input_number').val(input_number_value_inc);
    $('.input_number_decrement').attr('disabled',false);

    var netTotal = priceTotal* input_number_value_inc;
    $('#product_sale_price').html(netTotal.toFixed(2));

    }else{
        $('.input_number').val(available_quantity);
        input_number_value_inc = 1;
    }
 */

    });

    $(document).on('click', '.input_number_decrement', function(){
        var user = "{{ auth()->user()->id }}";
        var parent = $(this).parents('.cart_row');
        var input_number = parent.find('.input_number');
        var cart_id = parent.find('#cart_id').val();
        var price = parent.find('.item_p').html();
        var total_price = parent.find('.total_price');
        var thisQuantity = input_number.val();

       
        var input_number_value_dec = parseInt(thisQuantity) - 1;
        input_number.val(input_number_value_dec);

        var netTotal = parseFloat(price)*input_number_value_dec;
        total_price.html(netTotal);

        if (thisQuantity <= 1) {
                var input_number_value_dec = 1;
                input_number.val(input_number_value_dec);
            }

        $.ajax({
            url: "{{ route('frontend.product.cart.quantity.update')  }}",
            type: 'GET',
            data: {
                quantity: input_number_value_dec,
                total: netTotal,
                user_id: user,
                cart_id: cart_id,
            },
           
        });

       
    /* if(input_number_value > 1){
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
    } */
    });
</script>
@endsection                 
       

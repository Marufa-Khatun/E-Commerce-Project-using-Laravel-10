@extends('layouts.frontapp')
@section('title', 'Product Checkout')
@section('content')
    <section class="checkout-section section_space">
        <div class="container">
            <div class="row">
                <div class="col col-xs-12">
                    <div class="woocommerce">



                        <form  method="post" class="checkout woocommerce-checkout" action="{{ route('frontend.pay') }}"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="col2-set" id="customer_details">
                                <div class="coll-1">
                                    <div class="woocommerce-billing-fields">
                                        <h3>Billing Details</h3>

                                        <p class="form-row form-row form-row-wide validate-required"
                                            id="billing_first_name_field">
                                            <label for="billing_name" class="">Name <abbr class="required"
                                                    title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_name" id="billing_name"
                                                placeholder="" value="{{ auth()->user()->name }}" readonly>
                                        </p>


                                        <p class="form-row form-row form-row-wide" id="billing_company_field">
                                            <label for="billing_company" class="">Company Name</label>
                                            <input type="text" class="input-text " name="billing_company"
                                                id="billing_company" placeholder=""
                                                value="{{ auth()->user()->usermeta->company ?? '' }}">
                                        </p>
                                        <p class="form-row form-row form-row-first validate-required validate-email"
                                            id="billing_email_field">
                                            <label for="billing_email" class="">Email Address <abbr class="required"
                                                    title="required">*</abbr></label>
                                            <input type="email" class="input-text " id="billing_email"
                                                value="{{ auth()->user()->email }}" readonly>
                                        </p>
                                        <p class="form-row form-row form-row-last validate-required validate-phone"
                                            id="billing_phone_field">
                                            <label for="billing_phone" class="">Phone <abbr class="required"
                                                    title="required">*</abbr></label>
                                            <input type="tel" class="input-text " name="billing_phone"
                                                id="billing_phone" placeholder="" autocomplete="tel"
                                                value="{{ auth()->user()->usermeta->phone ?? '' }}">
                                        </p>
                                        <div class="clear"></div>


                                        <p class="form-row form-row form-row-wide address-field validate-required"
                                            id="billing_address_1_field">
                                            <label for="billing_address_1" class="">Address <abbr class="required"
                                                    title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_address_1"
                                                id="billing_address_1" placeholder="Street address"
                                                autocomplete="address-line1"
                                                value="{{ auth()->user()->usermeta->address ?? '' }}">
                                        </p>

                                        <p class="form-row form-row address-field validate-postcode validate-required form-row-first  woocommerce-invalid-required-field"
                                            id="billing_city_field">
                                            <label for="billing_city" class="">Town / City <abbr class="required"
                                                    title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_city" id="billing_city"
                                                placeholder="" autocomplete="address-level2"
                                                value="{{ auth()->user()->usermeta->city ?? '' }}">
                                        </p>
                                        <p class="form-row form-row form-row-last address-field validate-required validate-postcode"
                                            id="billing_postcode_field">
                                            <label for="billing_postcode" class="">Postcode / ZIP <abbr
                                                    class="required" title="required">*</abbr></label>
                                            <input type="text" class="input-text " name="billing_postcode8"
                                                id="billing_postcode" placeholder="" autocomplete="postal-code"
                                                value="{{ auth()->user()->usermeta->zipcode ?? '' }}">
                                        </p>
                                        <div class="clear"></div>

                                    </div>
                                </div>
                                <div class="coll-2">
                                    <div class="woocommerce-shipping-fields">
                                        <h3 id="ship-to-different-address">
                                            <label for="ship-to-different-address-checkbox" class="checkbox">Ship to a
                                                different address?</label>
                                            <input id="ship-to-different-address-checkbox" class="input-checkbox"
                                                type="checkbox" name="ship_to_different_address" value="1">
                                        </h3>
                                        <div class="shipping_address" style="display: none;">
                                            <p class="form-row form-row form-row-wide validate-required"
                                                id="shipping_first_name_field">
                                                <label for="shipping_name" class="">Name <abbr class="required"
                                                        title="required">*</abbr></label>
                                                <input type="text" class="input-text " name="shipping_name"
                                                    id="shipping_name" placeholder="" autocomplete="given-name"
                                                    value="">
                                            </p>

                                            <p class="form-row form-row form-row-wide" id="shipping_company_field">
                                                <label for="shipping_company" class="">Company Name</label>
                                                <input type="text" class="input-text " name="shipping_company"
                                                    id="shipping_company" placeholder="" autocomplete="organization"
                                                    value="">
                                            </p>


                                            <p class="form-row form-row form-row-wide address-field validate-required">

                                                <label class="">Phone <abbr class="required"
                                                        title="required">*</abbr></label>
                                                <input type="text" class="input-text " name="shipping_phone"
                                                    placeholder="Phone">

                                            </p>
                                            <p class="form-row form-row form-row-wide address-field validate-required"
                                                id="shipping_address_1_field">
                                                <label for="shipping_address_1" class="">Address <abbr
                                                        class="required" title="required">*</abbr></label>
                                                <input type="text" class="input-text " name="shipping_address_1"
                                                    id="shipping_address_1" placeholder="Street address"
                                                    autocomplete="address-line1" value="">
                                            </p>

                                            <p class="form-row form-row address-field validate-postcode validate-required form-row-first  woocommerce-invalid-required-field"
                                                id="billing_city_field2">
                                                <label for="billing_city" class="">Town / City <abbr
                                                        class="required" title="required">*</abbr></label>
                                                <input type="text" class="input-text " name="shipping_city"
                                                    id="billing_city3" placeholder="" autocomplete="address-level2"
                                                    value="">
                                            </p>
                                            <p class="form-row form-row form-row-last address-field validate-required validate-postcode"
                                                id="billing_postcode_field17">
                                                <label for="billing_postcode" class="">Postcode / ZIP <abbr
                                                        class="required" title="required">*</abbr></label>
                                                <input type="text" class="input-text " name="shipping_postcode"
                                                    id="billing_postcode4" placeholder="" autocomplete="postal-code"
                                                    value="">
                                            </p>
                                            <div class="clear"></div>
                                        </div>
                                        <p class="form-row form-row notes" id="order_comments_field">
                                            <label for="order_comments" class="">Order Notes</label>
                                            <textarea name="order_comments" class="input-text " id="order_comments"
                                                placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"></textarea>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <h3 id="order_review_heading">Your order</h3>
                            <div id="order_review" class="woocommerce-checkout-review-order">
                                <table class="shop_table woocommerce-checkout-review-order-table">
                                    <thead>
                                        <tr>
                                            <th class="product-name">Product</th>
                                            <th class="product-total">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (clientCartDetails() as $cart)
                                            <tr class="cart_item">
                                                <td class="product-name">
                                                    {{ $cart->product->title }} &nbsp; <strong
                                                        class="product-quantity">&times;{{ $cart->quantity }}</strong>
                                                </td>
                                                <td class="product-total">
                                                    <span class="woocommerce-Price-amount amount"><span
                                                            class="woocommerce-Price-currencySymbol">£</span>{{ ($cart->price + $cart->add_price) * $cart->quantity }}</span>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr class="cart-subtotal">
                                            <th>Subtotal</th>
                                            <td><span class="woocommerce-Price-amount amount"><span
                                                        class="woocommerce-Price-currencySymbol">£</span>{{ $cartTotal }}</span>
                                            </td>
                                        </tr>
                                        @if ($coupon_discount)
                                            <tr class="shipping">
                                                <th>Coupon Discount</th>
                                                <td data-title="Shipping">
                                                    <span> -{{ $coupon_discount }}</span>

                                                </td>
                                            </tr>
                                        @endif

                                        <tr class="shipping">
                                            <th>Shipping</th>
                                            <td data-title="Shipping">
                                                {{ $shippingCharge ?? 'Free Shipping' }}
                                               
                                            </td>
                                        </tr>


                                        <tr class="order-total">
                                            <th>Total</th>
                                            <td>
                                                <strong><span class="woocommerce-Price-amount amount">
                                                <span class="woocommerce-Price-currencySymbol">£</span>
                                                <span id="total_amount">{{ $cartTotal + ($shippingCharge ?? 0) - ($coupon_discount ?? 0) }}</span>
                                                </span></strong>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div id="payment" class="woocommerce-checkout-payment">
                                   
                                    <div class="form-row place-order">

                                        <button type="submit"   class="button alt">Place order</button>
                                       

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection



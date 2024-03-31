<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\EmailController;
use App\Http\Controllers\FilterController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\Frontend\ShopController;
use App\Http\Controllers\ProductReviewController;
use App\Http\Controllers\UserDashboardController;
use App\Http\Controllers\SslCommerzPaymentController;

Route::get('/', [FrontendController::class, 'index'])->name('frontend.index');
Route::get('/shop', [ShopController::class, 'index'])->name('frontend.shop.index');
Route::get('/about', [AboutController::class, 'index'])->name('frontend.about.index');
Route::get('/contact', [ContactController::class, 'index'])->name('frontend.contact.index');
Route::post('/application', [ContactController::class, 'store'])->name('frontend.application.store');
Route::get('/shop/category/{slug}', [ShopController::class, 'categoryProduct'])->name('frontend.shop.category');
Route::get('/shop/{slug}', [ShopController::class, 'singleProduct'])->name('frontend.shop.single');
Route::get('/select-color-wise-size', [ShopController::class, 'colorWiseSize'])->name('frontend.select.color.wise.size');
Route::get('/select-color-size-wise-inventory', [ShopController::class, 'colorSizeWiseInventory'])->name('frontend.select.color.size.wise.inventory');


//Api Route

Route::get('posts', [FrontendController::class, 'blogPost'])->name('blog.post');




Route::middleware(['auth','verified','roleuser'])->name('frontend.')->group(function(){          
    Route::get('product-cart-details', [CartController::class, 'index'])->name('product.cart.list');
    Route::post('product-cart', [CartController::class, 'store'])->name('product.cart');
    Route::delete('product-cart-delete/{id}', [CartController::class, 'destroy'])->name('product.cart.destroy');
    Route::get('product-cart-quantity-update', [CartController::class, 'cartQuantityUpdate'])->name('product.cart.quantity.update');
    Route::post('product-cart-apply-coupon', [CartController::class, 'cartApplyCoupon'])->name('product.cart.apply.coupon');
    Route::get('get-shipping-charge', [CartController::class, 'getShippingCharge'])->name('product.cart.shipping.charge');
    //CheckoutController
    Route::get('order-checkout', [CheckoutController::class, 'index'])->name('product.checkout.index');

    //sslcommerz

    Route::post('/pay', [CheckoutController::class, 'order'])->name('pay');
    Route::post('/success', [CheckoutController::class, 'success']);
    Route::post('/fail', [CheckoutController::class, 'fail']);
    Route::post('/cancel', [CheckoutController::class, 'cancel']);
    Route::post('/ipn', [CheckoutController::class, 'ipn']);


    //User Email Controller
    Route::post('user-email', [EmailController::class, 'store'])->name('email.store');

    //User Favourite Controller
    Route::post('wishlist/{id}', [WishlistController::class, 'store'])->name('wishlist.store');

     //User DashBoard
Route::controller(UserDashboardController::class)->prefix('user')->name('user.')->group(function(){
    Route::get('dashboard', 'index')->name('dashboard');
    Route::get('profile', 'show')->name('profile.show');
     });

     //product review
     Route::resource('product-review', ProductReviewController::class);

    
});

     //Filter 
     Route::get('search',[FilterController::class, 'search'])->name('frontend.product.search');





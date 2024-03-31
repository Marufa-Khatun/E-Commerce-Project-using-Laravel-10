<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\BackendController;
use App\Http\Controllers\UsServiceController;
use App\Http\Controllers\Backend\SizeController;
use App\Http\Controllers\Backend\ColorController;
use App\Http\Controllers\ShippingSetupController;
use App\Http\Controllers\Backend\BannerController;
use App\Http\Controllers\RolePermissionController;
use App\Http\Controllers\Backend\ContactController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\ServiceController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\InventoryController;
use App\Http\Controllers\Backend\PromotionController;
use App\Http\Controllers\Backend\AboutBackendController;


Route::name('usermanagement')->group(function(){
Route::controller(UserController::class)->group(function(){
Route::post('user/create', 'userCreate')->name('user.create');
Route::post('user/create', 'userCreate')->name('user.create');
});
});


Route::middleware(['auth','verified','roleadmin'])->prefix('dashboard')->name('backend.')->group(function(){

Route::get('/', [BackendController::class, 'index'])->name('index');

//role & permission route

Route::name('userrolemanagement.')->group(function(){

    Route::controller(RolePermissionController::class)->group(function(){

        //role Controller
        Route::get('role', 'roleList')->name('role.list')->middleware(['role_or_permission:super-admin|view role']);
        Route::get('role/create', 'roleCreate')->name('role.create')->middleware(['role_or_permission:super-admin|add role']);
        Route::post('role/create', 'roleStore')->name('role.store')->middleware(['role_or_permission:super-admin|add role']);
        Route::get('role/edit{id}', 'roleEdit')->name('role.edit')->middleware(['role_or_permission:super-admin|edit role']);
        Route::post('role/update{id}', 'roleUpdate')->name('role.update')->middleware(['role_or_permission:super-admin|edit role']);
        
        //permission controller
        Route::get('/permission', 'permissionList')->name('permission.list');
        Route::post('/permission', 'permissionStore')->name('permission.store');

        //user Controller
        Route::get('user/create', 'userCreate')->name('user.create');
        Route::post('user/create', 'userStore')->name('user.store');
        Route::get('user', 'userList')->name('user.list');
        Route::get('user/edit{id}', 'userEdit')->name('user.edit');
        Route::post('user/update{id}', 'userUpdate')->name('user.update');
        Route::delete('user/delete{id}', 'userDelete')->name('user.delete');
        });

});

Route::name('productmanagement.')->group(function(){
    Route::resource('category', CategoryController::class);
    Route::resource('product', ProductController::class);
    Route::resource('color', ColorController::class);
    Route::resource('size', SizeController::class);
    Route::resource('inventory', InventoryController::class);
    Route::get('product-trash-list', [ProductController::class, 'productTrashList'])->name('product.trash.list');
    Route::get('product-trash-restore/{id}', [ProductController::class, 'productTrashRestore'])->name('product.trash.restore');
    Route::delete('product-trash-delete/{id}', [ProductController::class, 'productTrashDelete'])->name('product.trash.delete');
    
    //color list datatable
    Route::get('/color-data-list', [ColorController::class, 'colorDataList'])->name('color.data.list');
   
    //Coupon
    Route::resource('coupon', CouponController::class);
    Route::resource('shippingsetup', ShippingSetupController::class);
    //system setup
    Route::resource('service', ServiceController::class);
    Route::resource('banner', BannerController::class);
    Route::resource('promotion', PromotionController::class);
    //About Us
    Route::resource('about', AboutBackendController::class);
    Route::resource('service', UsServiceController::class);
    Route::resource('team', TeamController::class);
    //Contact Us
    Route::resource('contact', ContactController::class);

});




});



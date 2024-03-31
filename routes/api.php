<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthApiController;
use App\Http\Controllers\Api\UserApiController;
use App\Http\Controllers\Api\ProductApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

/* Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
}); */ 


Route::post('user/sign-up', [AuthApiController::class, 'signUp']);
Route::post('login', [AuthApiController::class, 'login']);


Route::middleware('auth:sanctum')->group(function () {
    Route::post('logout/{id}', [AuthApiController::class, 'logOut']);

    Route::get('user-view/{id}', [UserApiController::class, 'show']);
    Route::post('user-update/{id}', [UserApiController::class, 'update']);
    Route::get('user-list', [UserApiController::class, 'userList']);
    Route::post('delete-user', [UserApiController::class, 'delete']);
});


Route::get('product-list',[ProductApiController::class, 'productList']);

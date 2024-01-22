<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CSRFTokenController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which 
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Auth routes
Route::controller(AuthController::class)->group(function () {
    Route::post("/register", "register");
    Route::post("/login", "login");
});


Route::get('/csrf-token', [CSRFTokenController::class, 'getToken']);

Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::get('/user', [UserController::class, 'index']);
    Route::post('/logout', [AuthController::class, "logout"]);
    Route::controller(ImageController::class)->group(function () {
        Route::get("/getPages", "getPages");
        Route::get("/getImages/{page}", "getImages");
        Route::get("/getImage/{id}", "getImage");
        Route::post("/createImage", "createImage");
        Route::delete("/deleteImage/{id}", "deleteImage");
        Route::put("/putImage", "putImage");
    });
});

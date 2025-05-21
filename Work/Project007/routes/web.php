<?php

use App\Http\Controllers\DisplayController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get("/", [DisplayController::class, "index"])->name("home");
Route::get("/adminEdit/{id}", [DisplayController::class, "AdminEditor"])->name("adminEdit");
Route::post("/UpdateHotel/{id}", [DisplayController::class, "HotelUpdate"])->name("HotelUpdate");
Route::post("/Hotel", [DisplayController::class, "HotelS"])->name("HotelS");
Route::get("/Register", [DisplayController::class, "Register"]);
Route::get("/Login", [DisplayController::class, "Login"]);
Route::get('/Admin', [DisplayController::class, 'Admin']);

Route::post("/AddRegister", [UserController::class, "AddRegister"])->name("AddRegister");
Route::post("/CheckLogin", [UserController::class, "CheckLogin"])->name("CheckLogin");





<?php

use App\Http\Controllers\DisplayController;
use Illuminate\Support\Facades\Route;

Route::get("/", [DisplayController::class, "Admin"]);
Route::get("/adminEdit/{id}", [DisplayController::class, "AdminEditor"])->name("adminEdit");
Route::post("/UpdateHotel/{id}", [DisplayController::class, "HotelUpdate"])->name("HotelUpdate");
Route::post("/Hotel", [DisplayController::class, "HotelS"])->name("HotelS");
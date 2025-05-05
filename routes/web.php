<?php

use App\Http\Controllers\ControlController;
use Illuminate\Support\Facades\Route;

Route::get('/', [ControlController::class, 'getHotels']);


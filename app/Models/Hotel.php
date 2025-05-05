<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $fillable = [
        'name',
        'location_string',
        'rating',
        'num_reviews',
        'latitude',
        'longitude',
        'price',
        'photo_url'
    ];
}

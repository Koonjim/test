<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Http;
use App\Models\Hotel;

class ControlController extends Controller
{
    public function getHotels()
    {
        $response = Http::withHeaders([
            'X-RapidAPI-Key' => '14633e7474msh2acd37dcddd3a6bp135739jsnd7573fca5b5b',
            'X-RapidAPI-Host' => 'travel-advisor.p.rapidapi.com'
        ])->get('https://travel-advisor.p.rapidapi.com/locations/search', [
            'query' => 'Yasothon',
            'limit' => '11',
            'lang' => 'th_TH',
            'currency' => 'THB'
        ]);
    
        $data = $response->json();
    
        $hotels = collect($data['data'])->filter(function ($item) {
            return $item['result_type'] === 'lodging';
        });
    
        foreach ($hotels as $item) {
            $hotelData = $item['result_object'];
    
            Hotel::updateOrCreate(
                ['name' => $hotelData['name']],
                [
                    'location_string' => $hotelData['location_string'] ?? null,
                    'rating' => $hotelData['rating'] ?? null,
                    'num_reviews' => $hotelData['num_reviews'] ?? null,
                    'latitude' => $hotelData['latitude'] ?? null,
                    'longitude' => $hotelData['longitude'] ?? null,
                    'price' => $hotelData['price'] ?? null,
                    'photo_url' => $hotelData['photo']['images']['small']['url'] ?? null,
                ]
            );
        }

        // ส่งเฉพาะข้อมูลจาก API
        return view('welcome', ['hotels' => $hotels]);
    }


}

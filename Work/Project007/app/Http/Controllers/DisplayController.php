<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class DisplayController extends Controller
{
    public function Admin()
    {
        $List = DB::table("hotels")->get();
        return view("Admintable", compact("List"));
    }

    public function AdminEditor($id)
    {
        $List = DB::table("hotels")->where("id", $id)->first();
        return view("HotelEditer", compact("List"));
    }

    public function HotelUpdate(Request $request,$id)
    {
        DB::table("hotels")->where("id", $id)->update(
            [
                "rating"=> $request->input("rating"),
                "star"=> $request->input("star"),
                "price_Single_Bed"=> $request->input("price_Single_Bed"),
                "price_Twin_Bed"=> $request->input("price_Twin_Bed"),
                "price_King_Size"=> $request->input("price_King_Size"),
                "photo_url"=> $request->input("photo_url"),
                "Service1"=> $request->input("Service1"),
                "Service2"=> $request->input("Service2"),
                "Service3"=> $request->input("Service3"),
            ]
        );
        return $this->Admin();
    }
}

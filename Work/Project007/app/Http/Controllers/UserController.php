<?php

namespace App\Http\Controllers;

use DB;
use App\Http\Controllers\DisplayController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
class UserController extends Controller
{
    public function AddRegister(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'Username' => 'required|string|max:255|unique:users,username',
            'Email' => 'required|email|max:255|unique:users,email',
            'Password' => 'required|string|min:6|confirmed',
        ], [
            'Username.required' => 'กรุณากรอกชื่อผู้ใช้',
            'Username.unique' => 'ชื่อผู้ใช้นี้ถูกใช้ไปแล้ว',
            'Email.required' => 'กรุณากรอกอีเมล',
            'Email.email' => 'รูปแบบอีเมลไม่ถูกต้อง',
            'Email.unique' => 'อีเมลนี้ถูกใช้ไปแล้ว',
            'Password.required' => 'กรุณากรอกรหัสผ่าน',
            'Password.confirmed' => 'รหัสผ่านไม่ตรงกัน',
            'Password.min' => 'รหัสผ่านต้องมีอย่างน้อย :min ตัวอักษร',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        if ($request->input("Password") == $request->input("Password_confirmation")) {
            DB::table("users")->updateOrInsert(
                [
                    "username" => $request->input("Username"),
                    "email" => $request->input("Email"),
                    "password" => Hash::make($request->input("Password")),
                    "role" => "User",
                    "updated_at" => Carbon::now(),
                    "created_at" => Carbon::now(),
                ]
            );
        }

        return view("welcome");
    }

    public function CheckLogin(Request $request)
    {
        $user = DB::table("users")
            ->where("username", $request->input("Username"))
            ->first();

        if ($user && Hash::check($request->input("Password"), $user->password)) {
            Session::put('user', [
                'id' => $user->id,
                'username' => $user->username,
                'role' => $user->role
            ]);

            if ($user->role === "Admin") {
                return redirect()->action([DisplayController::class, 'Admin']);
            }

            return redirect()->route('home');
        }

        return redirect()->back()
            ->withErrors(['login' => 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง'])
            ->withInput();
    }

}

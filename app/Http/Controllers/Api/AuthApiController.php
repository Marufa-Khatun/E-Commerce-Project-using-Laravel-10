<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthApiController extends Controller
{

    public function signUp(Request $request){
       $this->validate($request, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
        ]);

        $user= User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $user->assignRole('user');

        $respons = [
            'error'=> true,
            'message'=>'User not created!',
        ];

      

        if(!$user){
            return response()->json($respons,400);
        }

        $token = $user->createToken('mobile')->plainTextToken;
        $user = new UserResource(User::findOrFail($user->id));

        $respons = [
            'error'=> false,
            'message'=>'User  created!',
            'token'=>$token,
            'user'=> $user,
        ];

        return response()->json($respons,200);
    }


   public function login(Request $request){
    $request->validate([
        'email' => ['required', 'string', 'email'],
        'password' => ['required', 'string', 'min:6'],
        'device_name' => 'required',
    ]);

    $user = User::where('email', $request->email)->first();

    if (! $user || ! Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            'email' => ['The provided credentials are incorrect.'],
        ]);
    }

    $token = $user->createToken($request->device_name)->plainTextToken;

    if($token){
        $respons=[
            'error'=>false,
            'token'=>$token,
            'message'=>'Login Successful',
        ];
        return response()->json($respons,200);
    }else{

        $respons=[
            'error'=>false,
            'message'=>'Login Failed',
        ];
        return response()->json($respons,400);
    }
   }

  
public function logOut($id){
    $user = User::findOrFail($id);
    $user->tokens()->delete();

    $respons=[
        'error'=>false,
        'message'=>'Logout Successfull!',
    ];
    return response()->json($respons,200);
}

   

}

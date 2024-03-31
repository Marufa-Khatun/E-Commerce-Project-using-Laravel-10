<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;

class UserApiController extends Controller
{
   public function userList(){
    


    $users =  UserResource::collection(User::all());

    $respons = [
         'error'=>false,
         'users'=>$users,
    ];
    return response()->json($respons,200);

   }

   public function update(Request $request, $id){
      $this->validate($request, [
         'name' => ['required', 'string', 'max:255'],
         'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        
     ]);

     $user = User::findOrFail($id);
     $user->update([
      'name'=>$request->name,
      'email'=>$request->email,
     ]);

     $user = new UserResource($user);

     $respons = [
         'error'=> false,
         'message'=>'User  Updated!',
         'user'=> $user,
     ];

     return response()->json($respons,200);
   }


   public function show($id){
      $user = User::findOrFail($id);
     
 
      $user = new UserResource($user);
 
      $respons = [
          'error'=> false,
          'message'=>'User  Show!',
          'user'=> $user,
      ];
 
      return response()->json($respons,200);
   }



   public function delete(Request $request){
      $request->validate([
         'id'=>'required|integer',
      ],[
         'id.required'=>'user id not found',
      ]);
 
      $user = User::findOrFail($request->id);
      
      $user ->delete();
 
      $respons = [
          'error'=> false,
          'message'=>'User  Deleted!',
      ];
 
      return response()->json($respons,200);
   }
}

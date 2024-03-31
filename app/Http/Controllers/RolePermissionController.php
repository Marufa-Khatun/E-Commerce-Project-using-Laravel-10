<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionController extends Controller
{

  /*   public function __construct(){
        $this->middleware('role_or_permission:super-admin|edit role',['only'=>['roleList','roleEdit','roleUpdate']]);
        $this->middleware('role_or_permission:super-admin|add role',['only'=>['roleList','roleStore']]);
        $this->middleware('role_or_permission:super-admin|view role',['only'=>['roleList']]);
    } */
    public function userCreate(){
       
        $roles = Role::whereNotIn('name',['super-admin'])->get();
        return view('backend.user.create', compact('roles'));
    }

    public function userStore(Request $request){
     
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required',
        ]);

      $users = User::create($request->all());
      $users->assignRole($request->role);

       toastr()->closeButton()->addSuccess('User Created Successfully.');
       return back();

    }

    public function userList(){
        $users = User::whereNotIn('name',['super admin'])->orderBy('id', 'desc')->paginate(5);
       
        return view('backend.user.userlist', compact('users'));

    }

   

    public function userEdit($id){
        $user = User::find($id);
      $roles = Role::whereNotIn('name',['super-admin'])->get();
        return view('backend.user.edit', compact('user', 'roles')); 
        

    }

    
     public function userUpdate(Request $request,$id){
        $user = User::find($id);
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required',
        ]);

     
      $user ->update($request->all());
      $user->syncRoles($request->role);


       toastr()->closeButton()->addSuccess('User Update Successfully.');
       return back();

    } 
    public function userDelete($id)
    {
        $user=User::find($id)->delete();
        toastr()->closeButton()->addSuccess('Usert Deleted Successfully');
        return back();
    }

    public function roleList(){
        $roles = Role::whereNotIn('name',['super-admin'])->get();
        return view('backend.role_permission.rolelist', compact('roles'));

    }
    public function roleCreate(){
        $permissions = Permission::orderBy('id', 'desc')->get();
        return view('backend.role_permission.rolecreate', compact('permissions'));

    }

    public function roleStore(Request $request){
     
        $request->validate([
            'name'=>'required',
        ]);

      $role = Role::create($request->all());
      $role->givePermissionTo($request->permission);

       toastr()->closeButton()->addSuccess('Role Created Successfully.');
       return back();

    }

    public function roleEdit($id){
        $permissions = Permission::orderBy('id', 'desc')->get();
        $role = Role::find($id);
        return view('backend.role_permission.roleedit', compact('permissions', 'role'));

    }

    public function roleUpdate(Request $request, $id){
        $role = Role::find($id);

        $request->validate([
            'name'=>'required',
        ]);

      $role ->update([
        'name'=>$request->name,
      ]);
      $role->syncPermissions($request->permission);

       toastr()->closeButton()->addSuccess('Role Updated Successfully.');
       return back();

    }



    public function permissionList(){
        $permissions = Permission::orderBy('id', 'desc')->get();
        return view('backend.role_permission.permissionlist', compact('permissions'));
    }

    public function permissionStore(Request $request){
        $request->validate([
            'name'=>'required'
        ]);
       Permission::create($request->all());
       toastr()->closeButton()->addSuccess('Permission Created Successfully');
       return back();
    }
}

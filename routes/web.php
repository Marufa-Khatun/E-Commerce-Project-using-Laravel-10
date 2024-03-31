<?php

use App\Models\User;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Models\Permission;



Auth::routes(['verify' => true]);



require __DIR__ .'/backend.php';
require __DIR__ .'/frontend.php';





Route::get('/test', function(){
  $role = Role::find(1);
  $permission= Permission::find(3);

  $role->givepermissionTo($permission);
});
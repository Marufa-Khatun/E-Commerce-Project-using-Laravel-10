<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $superAdmin=User::create([
        'name' => 'super admin',
        'email' => 'super@gmail.com',
        'email_verified_at' => now(),
        'password' => Hash::make('123456'), // 123456
        'remember_token' => Str::random(10),
        ]);

        $user=User::create([
            'name' => 'user',
            'email' => 'user@gmail.com',
            'email_verified_at' => now(),
            'password' => Hash::make('123456'), // 123456
            'remember_token' => Str::random(10),
            ]);

        $superAdminRole=Role::create([
            'name'=>'super-admin',
        ]);

        $userRole=Role::create([
            'name'=>'user',
        ]);

        $superAdmin->assignRole($superAdminRole);
        $user->assignRole($userRole);

        $arrayOfPermissionNames = [
            'add user', 
            'edit user',
            'view user',
            'delete user',
            'add role',
            'view role',
            'edit role',
            'delete role',
            'create product',
            'view product', 
            'delete product',
            'edit product',
            'create category', 
            'view category', 
            'delete category',
            'edit category',
            'create color', 
            'view color', 
            'delete color',
            'edit color',
            'create size', 
            'view size', 
            'delete size',
            'edit size'								        
            
        ];
        $permissions = collect($arrayOfPermissionNames)->map(function ($permission) {
            return ['name' => $permission, 'guard_name' => 'web'];
        });
    
        Permission::insert($permissions->toArray());
    }
}

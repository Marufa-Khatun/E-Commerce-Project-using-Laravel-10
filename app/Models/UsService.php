<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsService extends Model
{
    use HasFactory;
       /**
     * the attributes that aren't mass assignable
     *
     *@var array
     */
    protected $guarded = ['id'];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    /**
     * the attributes that aren't mass assignable
    *
    *@var array
    */
    protected $guarded=['id'];
}

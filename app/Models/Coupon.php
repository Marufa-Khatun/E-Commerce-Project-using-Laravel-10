<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory, softDeletes;
     /**
     * the attributes that aren't mass assignable
    *
    *@var array
    */
    protected $guarded=['id'];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'start_date' => 'date',
        'expire_date' => 'date'
        
    ];
     
}

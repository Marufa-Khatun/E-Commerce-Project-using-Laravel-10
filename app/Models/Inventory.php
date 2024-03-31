<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Inventory extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * the attributes that aren't mass assignable
    *
    *@var array
    */
    protected $guarded=['id'];
    
    function color(){
        return $this->hasOne(Color::class, 'id', 'color_id');
    }

    function size(){
        return $this->hasOne(Size::class, 'id', 'size_id');
    }

    function product(){
        return $this->belongsTo(Product::class);
    }
}

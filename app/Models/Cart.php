<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Cart extends Model
{
    use HasFactory;
     /**
     * the attributes that aren't mass assignable
    *
    *@var array
    */
    protected $guarded=['id'];

    public function product(){
        return $this->belongsTo(Product::class);
    }
}

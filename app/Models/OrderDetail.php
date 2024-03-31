<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class OrderDetail extends Model
{
    use HasFactory;
    
    protected $table = 'order_details';

/**
     * the attributes that aren't mass assignable
     *
     *@var array
     */
    protected $guarded = ['id'];


    public function product(){
        return $this->belongsTo(Product::class);
    }
    public function review(){
        return $this->hasOne(ProductReview::class);
    }
}
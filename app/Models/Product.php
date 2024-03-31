<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Support\Str;
use App\Models\ProductReview;
use App\Models\ProductGallery;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    /**
    * the attributes that aren't mass assignable
    *
    *@var array
    */
    protected $guarded=['id'];
    public function setTitleAttribute($value)
{
    $this->attributes['title'] = $value;
    $this->attributes['slug'] = Str::slug($value);
}
    public function categories(){
    return $this->belongsToMany(Category::class);
}
    public function galleries(){
    return $this->hasMany(ProductGallery::class);
}

public function inventories(){
    return $this->hasMany(Inventory::class);
}




}

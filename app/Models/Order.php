<?php

namespace App\Models;

use App\Models\OrderDetail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Order extends Model
{
    use HasFactory;
    /**
     * the attributes that aren't mass assignable
     *
     *@var array
     */
    protected $guarded = ['id'];

    public function orderDetails(){
        return $this->hasMany(OrderDetail::class);
    }
}

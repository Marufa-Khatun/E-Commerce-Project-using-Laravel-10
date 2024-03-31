<?php

namespace App\Providers;


use App\Models\Banner;
use App\Models\Product;
use App\Models\Service;
use App\Models\Category;
use App\Models\Promotion;
use App\Models\OrderDetail;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrapFive(); 
    
    }

}


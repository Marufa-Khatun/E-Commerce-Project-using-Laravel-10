<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->id();
            $table->string('google_link');
            $table->string('title');
            $table->text('short_description');
            $table->string('list_title');
            $table->string('location');
            $table->string('open_closes_time');
            $table->string('email');
            $table->string('phone');
            $table->string('touch_title');
            $table->text('touch_description');
            $table->integer('status')->default(1)->comment('1=active, 0=deactive');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('addresses');
    }
};



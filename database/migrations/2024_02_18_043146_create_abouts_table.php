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
        Schema::create('abouts', function (Blueprint $table) {
            $table->id();
            $table->string('title1');
            $table->string('title2');
            $table->text('short_description');
            $table->integer('esperience_years');
            $table->string('happy_customers');
            $table->integer('client_satisfaction');
            $table->string('image')->nullable();
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
        Schema::dropIfExists('abouts');
    }
};

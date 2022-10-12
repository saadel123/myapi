<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserFavoritesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_favorites', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->nullable();
            $table->integer('id_hotel')->nullable();
            $table->integer('id_riad')->nullable();
            $table->integer('id_restaurant')->nullable();
            $table->integer('id_maison_hote')->nullable();
            $table->integer('id_guide')->nullable();
            $table->integer('id_activite')->nullable();
            $table->integer('id_lieux')->nullable();
            $table->integer('id_gastronomie')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_favorites');
    }
}

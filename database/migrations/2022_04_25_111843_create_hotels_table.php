<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('hotels')) {
            Schema::create('hotels', function (Blueprint $table) {
                $table->id();
                $table->integer('user_id')->nullable();
                $table->string('nom')->nullable();
                $table->string('slug')->nullable();
                $table->text('description')->nullable();
                $table->string('tel', 20)->nullable();
                $table->integer('ville')->nullable();
                $table->string('adresse')->nullable();
                $table->string('email')->nullable();
                $table->string('prix')->nullable();
                $table->string('website')->nullable();
                $table->string('facebook')->nullable();
                $table->string('instagram')->nullable();
                $table->string('tiktok')->nullable();
                $table->string('image')->nullable();
                $table->integer('nbr_etoiles')->nullable();
                $table->integer('nb_visite')->default(0);
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hotels');
    }
}

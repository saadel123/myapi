<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservezsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservezs', function (Blueprint $table) {
            $table->id();
            $table->string('username')->nullable();
            $table->string('email')->nullable();
            $table->string('tel')->nullable();
            $table->string('subject')->nullable();
            $table->string('message', 3000)->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('id_hotel')->nullable();
            $table->integer('id_riad')->nullable();
            $table->integer('id_maison_hote')->nullable();
            $table->integer('id_restaurant')->nullable();
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
        Schema::dropIfExists('reservezs');
    }
}

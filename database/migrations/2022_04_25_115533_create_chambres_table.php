<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChambresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('chambres')) {
            Schema::create('chambres', function (Blueprint $table) {
                $table->id();
                $table->string('libelle');
                $table->text('description')->nullable();
                $table->integer('id_hotel')->nullable();
                $table->integer('id_riad')->nullable();
                $table->integer('id_maison_hote')->nullable();
                $table->integer('id_type_chambre')->nullable();
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
        Schema::dropIfExists('chambres');
    }
}

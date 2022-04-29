<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTypeChambresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('type_chambres')) {
            Schema::create('type_chambres', function (Blueprint $table) {
                $table->id();
                $table->string('type');
                $table->text('options')->nullable();
                $table->integer('prix')->nullable();
                $table->integer('nbr_personnes')->nullable();
                $table->integer('id_chambre')->nullable();
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
        Schema::dropIfExists('type_chambres');
    }
}

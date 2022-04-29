<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentairesTable extends Migration
{
    
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('commentaires')) {
            Schema::create('commentaires', function (Blueprint $table) {
                $table->id();
                $table->text('commentaire')->nullable();
                $table->integer('user_id')->nullable();
                $table->integer('id_hotel')->nullable();
                $table->integer('id_riad')->nullable();
                $table->integer('id_maison_hote')->nullable();
                $table->integer('parent_id')->nullable();
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
        Schema::dropIfExists('commentaires');
    }
}

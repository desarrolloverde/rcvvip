<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLaborsocialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('laborsocials', function (Blueprint $table) {
            $table->id();
            $table->string('titulo',128);
            $table->string('descripcion');
            $table->string('lugar');
            $table->date('fecha');
            $table->text('foto_path');
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
        Schema::dropIfExists('laborsocials');
    }
}

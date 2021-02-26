<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {
        Schema::create('plans', function (Blueprint $table) {
            $table->id();
            $table->string('plan',32);
            $table->foreignId('id_clase')->references('id')->on('clases');//catalogo
            $table->smallInteger('activo');
            $table->decimal('costo', $precision = 10, $scale = 2);
            $table->decimal('cobertura', $precision = 15, $scale = 2);
            $table->decimal('costo_asi_med', $precision = 10, $scale = 2);
            $table->decimal('costo_invalidez', $precision = 10, $scale = 2);
            $table->decimal('costo_fallec', $precision = 10, $scale = 2);
            $table->decimal('costo_bienes', $precision = 10, $scale = 2);
            $table->decimal('costo_grua', $precision = 10, $scale = 2);
            $table->decimal('costo_estacionamiento', $precision = 15, $scale = 2);
            $table->decimal('costo_cobertura', $precision = 15, $scale = 2);
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
        Schema::dropIfExists('plans');
    }
}

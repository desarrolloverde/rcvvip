<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransportesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('marcas', function (Blueprint $table) {
            $table->id();
            $table->string('marca',32);//catalogo
        });
        Schema::create('modelos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_marca')->references('id')->on('marcas');
            $table->string('modelo',32);
        });
        Schema::create('clases', function (Blueprint $table) {
            $table->id();
            $table->string('clase',32);//catalogo
            $table->enum('tipoclase',['Terrestre','Acuatico','Aereo']);
        });
        Schema::create('tipo', function (Blueprint $table) {
            $table->id();
            $table->string('tipo',32);//catalogo
        });
        Schema::create('transportes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_marca')->references('id')->on('marcas');//catalogo
            $table->foreignId('id_modelo')->references('id')->on('modelos');//catalogo
            $table->string('anio',4);//lista html
            $table->foreignId('id_clase')->references('id')->on('clases');//catalogo
            $table->foreignId('id_tipo')->references('id')->on('tipo');//cataloo
            $table->foreignId('id_uso')->references('id')->on('usos');//cataloo
            $table->string('serialcarroceria',32);
            $table->string('serialmotor',32);
            $table->string('color',32);//lista html
            $table->string('puestos',2);//lista html
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
        Schema::dropIfExists('transportes');
        Schema::dropIfExists('tipo');
        Schema::dropIfExists('clase');
        Schema::dropIfExists('modelo');
        Schema::dropIfExists('marca');
    }
}

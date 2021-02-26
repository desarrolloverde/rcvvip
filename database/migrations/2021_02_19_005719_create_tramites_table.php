<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTramitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tramites', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_user')->references('id')->on('users')->nullable();
            $table->foreignId('id_propietario')->references('id')->on('propietarios');
            $table->foreignId('id_transporte')->references('id')->on('transportes');
            $table->foreignId('id_statustramite')->references('id')->on('statustramite');
            $table->foreignId('id_clase')->references('id')->on('clases');
            $table->foreignId('id_plan')->references('id')->on('plans');
            $table->string('doc_path',64)->nullable();
            $table->enum('tptramite',['rcv'])->default('rcv');
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
        Schema::dropIfExists('tramites');
    }
}

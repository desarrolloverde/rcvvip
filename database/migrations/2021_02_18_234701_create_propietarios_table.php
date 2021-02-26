<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePropietariosTable extends Migration
{    
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('propietarios', function (Blueprint $table) {
            $table->id();
            //$table->string('nacionalidad',1);
            $table->string('cedula',10)->unique();
            $table->string('nombre',64);
            $table->string('apellido',64);
            $table->string('telefono',13);
            $table->string('email')->unique();
            $table->date('vigenciadesde')->nullable();
            $table->date('vigenciahasta')->nullable();
            $table->foreignId('id_estado')->references('id')->on('estados');
            $table->foreignId('id_municipio')->references('id')->on('municipios')->nullable();
            $table->foreignId('id_ciudad')->references('id')->on('ciudades');
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
        Schema::dropIfExists('propietarios');
    }
}

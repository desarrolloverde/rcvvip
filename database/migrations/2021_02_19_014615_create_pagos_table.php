<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pagos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_tramite')->references('id')->on('tramites');
            $table->string('origenbanco',64);
            $table->string('referencia',32);
            $table->enum('estatus', ['Enviado', 'Aprobado', 'Rechazado']);
            $table->enum('tipopago', ['Transferencia', 'Pago Movil', 'Efectivo']);
            $table->text('imgpago')->nullable();
            $table->decimal('pago', $precision = 10, $scale = 2);
            $table->decimal('ingresoreal', $precision = 10, $scale = 2);
            $table->tinyInteger('descuento');
            $table->date('fepago'); 
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
        Schema::dropIfExists('pagos');
    }
}

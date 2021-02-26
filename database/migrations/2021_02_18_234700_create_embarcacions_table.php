<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmbarcacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('embarcacions', function (Blueprint $table) {
            $table->id();
            $table->string('embarcacion',32);
            $table->string('buque',32);
            $table->string('matricula',32);
            $table->string('manga',32);
            $table->string('casco',32);
            $table->string('eslora',32);
            $table->string('puntal',32);
            $table->foreignId('id_transporte')->references('id')->on('transportes');
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
        Schema::dropIfExists('embarcacions');
    }
}

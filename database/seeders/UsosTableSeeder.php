<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\db;

class UsosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::insert("insert into usos (uso) values ('Carga'),
			('Competencia'),
			('Grua'),
			('Maquinaria Pesada'),
			('Oficial'),
			('Particular'),
			('Pesca'),
			('Placer'),
			('Recreo'),
			('Recreo-Placer'),
			('Transporte Privado'),
			('Transporte Publico')");
    }
}

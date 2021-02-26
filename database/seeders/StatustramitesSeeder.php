<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatustramitesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::insert("insert into statustramite (txstatus) values ('Guardado'),
			('Pagado'),
			('Aprobado'),
			('Rechazado'),
			('Eliminado')");
    }
    
}

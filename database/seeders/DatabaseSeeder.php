<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        
        $this->call([
          //   	UsersTablesSeeder::class,
          //    ClaseTransporteTablesSeed::class,
          //    TipoTransporteTableSeeder::class,
          //    MarcaTransporteTableSeeder::class,
          //  ModeloTransporteTableSeeder::class,
           // EstadoMunicipioPArroquiaCiudadTablesSeeder::class,
           // UsosTableSeeder::class,
            planesSeeder::class,
            StatustramitesSeeder::class,
	        	]);
    }
}

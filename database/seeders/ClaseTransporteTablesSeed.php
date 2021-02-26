<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class ClaseTransporteTablesSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	
    	/*
        

        //Seed paratabla catalogo modelo
        
        //Seed para tabla catalogo de clase
        */
        DB::insert("insert into clases (clase, tipoclase) values 
			('Particular'				,		'Terrestre'),
        	('Camioneta'				,		'Terrestre'),
        	('Taxi'						,		'Terrestre'),
        	( 'Rustico'					,		'Terrestre'),
        	( 'Moto'						,		'Terrestre'),
        	( 'Minibús'					,		'Terrestre'),
        	( 'Autobús'					,		'Terrestre'),
        	( 'Grúa'						,		'Terrestre'),
        	( 'Camion Plataforma 350'	,		'Terrestre'),
        	( 'Camion Plataforma 600'	,		'Terrestre'),
			( 'Camion Plataforma 750'	,		'Terrestre'),
			( 'Carga, Batea, Chuto o Tara',		'Terrestre'),
			( 'Lancha o Bote'			,		'Acuatico'),
			( 'Yate'						,		'Acuatico'),
			( 'Barco'					,		'Acuatico')");
        
        
    }
}

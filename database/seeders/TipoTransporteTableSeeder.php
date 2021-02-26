<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TipoTransporteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Seed para tabla catalogo de clase
        DB::insert("insert into tipo (tipo) values
        	('Ambulancia'),
			('Arrastre'),
			('Autobusete'),
			('Baranda'),
			('Baranda / Hierro'),
			('Batea'),
			('Buque'),
			('Camioneta'),
			('Carga'),
			('Carroceria'),
			('Casillero'),
			('Cava'),
			('Cesta'),
			('Chasis'),
			('Chopper'),
			('Chuto'),
			('Cisterna'),
			('Colectivo'),
			('Compacto MPV'),
			('Coupe'),
			('Crossover'),
			('Custon'),
			('Encava'),
			('Enduro'),
			('Estacas'),
			('Excavadora'),
			('Ferretero'),
			('Fibra'),
			('Furgon'),
			('Furgón/Cachucha'),
			('Gato Hidraulico'),
			('Granel'),
			('Grua'),
			('Grua de Plataforma'),
			('Hatch Back'),
			('Jaula'),
			('Jaula Ganadera'),
			('Jaula Pollera'),
			('Low - Boy'),
			('Minibus'),
			('Minivan'),
			('Motocicleta'),
			('Panel'),
			('Paseo'),
			('Peñero'),
			('Pick Up'),
			('Pick Up D/ Cabina'),
			('Pick Up/C Cabina'),
			('Pick-Up / Baranda'),
			('Pick-Up / Baranda/Hierro'),
			('Pick-Up/C Furgon'),
			('Plat / Estruc / Hierro'),
			('Plataf / Cachucha'),
			('Plataf/Baranda/Hierro'),
			('Plataforma'),
			('Plataforma / Baranda Metalica'),
			('Plataforma Desplazable'),
			('Plataforma Fija'),
			('Platf / Baranda'),
			('Platf / Estaca'),
			('Platf/B Hidraulico'),
			('Porta Contenedores'),
			('Racing'),
			('Ranchera'),
			('Remolque'),
			('Renegado'),
			('Rustico'),
			('Rustico Carga'),
			('Scooter'),
			('Sedan'),
			('Sport Wagon'),
			('Sport Wagon Convertible'),
			('Station Wagon'),
			('Supervan'),
			('Tanque'),
			('Techo de Lona'),
			('Techo Duro'),
			('Touring'),
			('Tractor'),
			('Type of ship'),
			('Utilitario'),
			('Vacuum'),
			('Van'),
			('Volqueta'),
			('Volteo')"
		);
    }
}

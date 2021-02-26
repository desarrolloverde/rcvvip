<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MarcaTransporteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        
        	//Seed para tabla catalogo de marca
        DB::insert("insert into marcas (marca) values
        	('Abarth'),
			('Alfa Romeo'),
			('Aro'),
			('Asia'),
			('Asia Motors'),
			('Aston Martin'),
			('Audi'),
			('Austin'),
			('Auverland'),
			('Bentley'),
			('Bertone'),
			('Bmw'),
			('Cadillac'),
			('Chevrolet'),
			('Chrysler'),
			('Citroen'),
			('Corvette'),
			('Dacia'),
			('Daewoo'),
			('Daf'),
			('Daihatsu'),
			('Daimler'),
			('Dodge'),
			('Ferrari'),
			('Fiat'),
			('Ford'),
			('Galloper'),
			('Gmc'),
			('Honda'),
			('Hummer'),
			('Hyundai'),
			('Infiniti'),
			('Innocenti'),
			('Isuzu'),
			('Iveco'),
			('Iveco-pegaso'),
			('Jaguar'),
			('Jeep'),
			('Kia'),
			('Lada'),
			('Lamborghini'),
			('Lancia'),
			('Land-rover'),
			('Ldv'),
			('Lexus'),
			('Lotus'),
			('Mahindra'),
			('Maserati'),
			('Maybach'),
			('Mazda'),
			('Mercedes-benz'),
			('Mg'),
			('Mini'),
			('Mitsubishi'),
			('Morgan'),
			('Nissan'),
			('Opel'),
			('Peugeot'),
			('Pontiac'),
			('Porsche'),
			('Renault'),
			('Rolls-royce'),
			('Rover'),
			('Saab'),
			('Santana'),
			('Seat'),
			('Skoda'),
			('Smart'),
			('Ssangyong'),
			('Subaru'),
			('Suzuki'),
			('Talbot'),
			('Tata'),
			('Toyota'),
			('Umm'),
			('Vaz'),
			('Volkswagen'),
			('Volvo'),
			('Wartburg')"
		);
    }
}

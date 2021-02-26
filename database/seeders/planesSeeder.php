<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class planesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::insert("insert into plans (plan, id_clase, activo, costo, cobertura) values ('Cobertura Basica',1,1,9000000,200000000),
('Cobertura VIP',1,1,18000000,400000000),
('Cobertura Basica',2,1,12500000,200000000),
('Cobertura VIP',2,1,25000000,400000000),
('Cobertura Basica',3,1,10000000,200000000),
('Cobertura VIP',3,1,10000000,400000000),
('Cobertura Basica',4,1,7000000,200000000),
('Cobertura VIP',4,1,15000000,400000000),
('Cobertura Basica',5,1,20000000,200000000),
('Cobertura VIP',5,1,15000000,400000000),
('Cobertura Basica',6,1,20000000,200000000),
('Cobertura VIP',6,1,15000000,400000000),
('Cobertura Basica',7,1,15000000,200000000),
('Cobertura VIP',7,1,17500000,400000000),
('Cobertura Basica',8,1,19000000,200000000),
('Cobertura VIP',8,1,19000000,400000000),
('Cobertura Basica',9,1,10000000,200000000),
('Cobertura VIP',9,1,10000000,400000000),
('Cobertura Basica',10,1,10000000,200000000),
('Cobertura VIP',10,1,10000000,400000000),
('Cobertura Basica',11,1,10000000,200000000),
('Cobertura VIP',11,1,10000000,400000000),
('Cobertura Basica',12,1,10000000,200000000),
('Cobertura VIP',12,1,10000000,400000000),
('Cobertura Basica',13,1,10000000,200000000),
('Cobertura VIP',13,1,10000000,400000000)");
    }
}

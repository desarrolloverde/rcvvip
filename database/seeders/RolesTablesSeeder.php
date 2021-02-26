<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RolesTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Roles::create([
        	'cedula'		=>		14730738,
        	'nombre'		=>		'Osmer',
        	'apellido'		=>		'Vargas',
        	'email'			=>		'vargasos4@gmail.com',
        	'password'		=>		Hash::make('admin123'),
        	'roles_id'		=>		1,
        	'rememberToken'	=>		str_random(10)

        ]);
    }
}

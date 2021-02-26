<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
         DB::table('users')->insert([
        	'cedula'		=>		14730738,
        	'nombre'		=>		'Osmer',
        	'apellido'		=>		'Vargas',
        	'email'			=>		'vargasos4@gmail.com',
        	'password'		=>		Hash::make('admin123'),
        	'roles'		=>		'admin',
            'aprobado'  =>  1,
        	'remember_token'	=>		Str::random(10),

        ]);

    }
}

/*
$table->integer('cedula')->length(8);
            $table->string('nombre',64);
            $table->string('apellido',64);
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->foreignId('roles_id');
            $table->text('profile_photo_path')->nullable();
            $table->rememberToken();
            $table->timestamps();
*/
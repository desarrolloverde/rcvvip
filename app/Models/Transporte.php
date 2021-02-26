<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transporte extends Model
{
    use HasFactory;

    protected $fillable = [
    	'id_marca',
        'id_modelo',
        'id_tipo',
        'id_clase',
        'id_uso',
        'color',
        'anio',
        'puestos',
        'serialcarroceria',
        'serialmotor',
        'placa',
        'id_propietario'
    ];
}

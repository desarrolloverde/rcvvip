<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tramite extends Model
{
    use HasFactory;

    protected $fillable = [
    	'id_user',
        'id_propietario',
        'id_transporte',
        'id_statustramite',
        'id_clase',
        'id_plan',
        'tptramite'
    ];
    	
}

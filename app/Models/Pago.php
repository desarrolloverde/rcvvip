<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    use HasFactory;
     protected $fillable = [
    	'id_tramite',
        'imgpago',
        'pago',
    	'ingresoreal',
        'descuento',
        'fepago',
        'tipopago',
        'origenbanco',
        'referencia',
        'estatus'
    ];
}

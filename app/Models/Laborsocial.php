<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Laborsocial extends Model
{
    use HasFactory;

    protected $fillable = [
        'titulo',
        'descripcion',
        'lugar',
        'fecha',
        'photo_path',
    ];
}

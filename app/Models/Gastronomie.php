<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gastronomie extends Model
{
    use HasFactory;
    protected $table = 'gastronomies';
    protected $fillable = [
        'user_id',
        'ville_id',
        'titre',
        'slug',
        'description',
        'image'
    ];
}
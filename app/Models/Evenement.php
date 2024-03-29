<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evenement extends Model
{
    use HasFactory;
    protected $table='evenements';
    protected $fillable = [
        'user_id' ,
        'ville_id' ,
        'titre' ,
        'titre_ar' ,
        'slug' ,
        'description' ,
        'description_ar',
        'image',
        'seo_titre' ,
        'seo_description' ,
        'seo_keywords'
    ];
}

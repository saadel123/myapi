<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actualite extends Model
{
    use HasFactory;
    protected $table='actualites';
    protected $fillable = [
        'user_id' ,
        'ville_id' ,
        'image',
        'titre' ,
        'titre_ar',
        'slug' ,
        'description' ,
        'description_ar' ,
        'seo_titre' ,
        'seo_description' ,
        'seo_keywords' ,
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;
    protected $table='hotels';
    protected $fillable = [
        'user_id' ,
        'nom' ,
        'slug' ,
        'description' ,
        'tel' ,
        'ville_id' ,
        'adresse' ,
        'email' ,
        'prix' ,
        'website' ,
        'facebook' ,
        'instagram' ,
        'tiktok' ,
        'nbr_etoiles' ,
        'image',
        'nb_visite' 
    ];

    public function ville(){
        return $this->belongsTo(Ville::class,'ville_id');
    }
    public function images() 
    {
        return $this->hasMany(Image::class,'id_hotel');
    }
}

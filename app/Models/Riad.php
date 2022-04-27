<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riad extends Model
{
    use HasFactory;
    protected $table='riads';
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
        'nb_visite', 
        'image' 
    ];
    public function ville(){
        return $this->belongsTo(Ville::class,'ville_id');
    }
    public function images(){
        return $this->hasMany(Image::class,'id_riad');
    }
}

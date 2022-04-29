<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaisonHotes extends Model
{
    use HasFactory;
    protected $table='maison_hotes';
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
        return $this->hasMany(Image::class,'id_maison_hote');
    }
    public function chambres() 
    {
        return $this->hasMany(Chambre::class,'id_maison_hote');
    }
    public function commentaires() 
    {
        return $this->hasMany(Commentaire::class,'id_maison_hote');
    }
    public function type_chambres()
    {
        return $this->hasManyThrough(Type_chambre::class, Chambre::class,'id_maison_hote','id_chambre');
    }
}

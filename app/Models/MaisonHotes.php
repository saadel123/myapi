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
        'nom_ar',
        'description_ar',
        'tel' ,
        'ville_id' ,
        'adresse' ,
        'email' ,
        'prix' ,
        'website' ,
        'display_home',
        'display',
        'url' ,
        'facebook' ,
        'instagram' ,
        'tiktok' ,
        'nb_visite',
        'whatsapp',
        'prix_min',
        'prix_max',
        'accepter_regles'
    ];
    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
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
     public function services()
    {
        return $this->hasMany(Service::class, 'id_maison_hote');
    }
    public function hebergement_service()
    {
        return $this->hasMany(HebergementService::class, 'id_maison_hote');
    }
    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_maison_hote');
    }
}

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
        'whatsapp' ,
        'nb_visite',
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
        return $this->hasMany(Image::class,'id_riad');
    }
    public function chambres()
    {
        return $this->hasMany(Chambre::class,'id_riad');
    }
    public function commentaires()
    {
        return $this->hasMany(Commentaire::class,'id_riad');
    }
    public function type_chambres()
    {
        return $this->hasManyThrough(Type_chambre::class, Chambre::class,'id_riad','id_chambre');
    }
    public function services()
    {
        return $this->hasMany(Service::class, 'id_riad');
    }
    public function hebergement_service()
    {
        return $this->hasMany(HebergementService::class, 'id_riad');
    }
    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_riad');
    }
}

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
}

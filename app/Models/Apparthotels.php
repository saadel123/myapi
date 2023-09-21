<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Apparthotels extends Model
{
    use HasFactory;
    protected $table='apparthotels';
    protected $fillable = [
        'user_id' ,
        'nom' ,
        'nom_ar' ,
        'slug' ,
        'description' ,
        'description_ar' ,
        'tel' ,
        'ville_id' ,
        'adresse' ,
        'email' ,
        'website' ,
        'display_home',
        'display',
        'url' ,
        'facebook' ,
        'instagram' ,
        'tiktok' ,
        'whatsapp' ,
        'nb_visite',
        'prix_nuit',
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
        return $this->hasMany(Image::class,'id_apparthotels');
    }
    public function commentaires()
    {
        return $this->hasMany(Commentaire::class,'id_apparthotels');
    }
    public function services()
    {
        return $this->hasMany(Service::class, 'id_apparthotels');
    }
    public function hebergement_service()
    {
        return $this->hasMany(HebergementService::class, 'id_apparthotels');
    }
    public function chambres()
    {
        return $this->hasMany(Chambre::class,'id_apparthotels');
    }
    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_apparthotels');
    }
    public function user_favorites()
    {
        return $this->hasMany(UserFavorite::class, 'id_apparthotels')->select('id', 'id_apparthotels','user_id');
    }
}

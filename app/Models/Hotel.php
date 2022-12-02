<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;
    protected $table = 'hotels';
    protected $fillable = [
        'user_id',
        'nom',
        'slug',
        'description',
        'tel',
        'ville_id',
        'adresse',
        'email',
        'prix',
        'website',
        'facebook',
        'instagram',
        'tiktok',
        'whatsapp',
        'nbr_etoiles',
        'image',
        'nb_visite',
        'prix_min',
        'prix_max',
        'accepter_regles'
    ];
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select('id','email');
    }
    public function ville()
    {
        return $this->belongsTo(Ville::class, 'ville_id')->select('id','ville');
    }
    public function images()
    {
        return $this->hasMany(Image::class, 'id_hotel')->select('id','image','id_hotel','created_at');
    }
    public function chambres()
    {
        return $this->hasMany(Chambre::class, 'id_hotel')->select('id','options','prix','nbr_personnes','id_type_chambre','type','id_hotel','created_at');
    }

    public function commentaires()
    {
        return $this->hasMany(Commentaire::class, 'id_hotel')->select('id','commentaire','user_id','id_hotel','created_at');
    }
    // public function type_chambres()
    // {
    //     return $this->hasManyThrough(Type_chambre::class, Chambre::class,'id_hotel','id_chambre');
    // }

    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_hotel');
    }
    public function services()
    {
        return $this->hasMany(Service::class, 'id_hotel');
    }
    public function hotel_service()
    {
        return $this->hasMany(HebergementService::class, 'id_hotel')->select('id','id_hotel','id_service','created_at');
    }
    public function user_favorites()
    {
        return $this->hasMany(UserFavorite::class, 'id_hotel')->select('id', 'id_hotel','user_id');
    }
}

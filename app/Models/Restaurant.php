<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    use HasFactory;
    protected $table = 'restaurants';
    protected $fillable = [
        'user_id',
        'nom',
        'slug',
        'description',
        'specialite',
        'horaire',
        'tel',
        'ville_id',
        'adresse',
        'email',
        'prix',
        'website',
        'facebook',
        'instagram',
        'tiktok',
        'image',
        'nb_visite'
    ];
    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
    public function ville()
    {
        return $this->belongsTo(Ville::class, 'ville_id');
    }
    public function catmenus()
    {
        return $this->hasMany(CatMenu::class, 'id_restaurant');
    }
    public function images()
    {
        return $this->hasMany(Image::class, 'id_restaurant');
    }
    public function commentaires()
    {
        return $this->hasMany(Commentaire::class, 'id_restaurant');
    }
    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_restaurant');
    }
}

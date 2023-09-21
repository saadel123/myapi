<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activite extends Model
{
    use HasFactory;
    protected $table = 'activites';
    protected $fillable = [
        'user_id',
        'nom',
        'nom_ar',
        'slug',
        'description',
        'description_ar',
        'tel',
        'ville_id',
        'adresse',
        'email',
        'prix',
        'date_act',
        'website',
        'display_home',
        'display',
        'url' ,
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
        return $this->belongsTo(User::class, 'user_id');
    }
    public function ville()
    {
        return $this->belongsTo(Ville::class, 'ville_id');
    }
    public function images()
    {
        return $this->hasMany(ActiviteImage::class, 'id_activite');
    }
    public function commentaires()
    {
        return $this->hasMany(Commentaire::class, 'id_activite');
    }
    public function type_activite()
    {
        return $this->hasMany(TypeActivite::class, 'id_activite');
    }
    public function reservezs()
    {
        return $this->hasMany(Reservez::class, 'id_activite');
    }
}

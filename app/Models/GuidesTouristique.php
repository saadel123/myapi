<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GuidesTouristique extends Model
{
    use HasFactory;
    protected $table = 'guides_touristiques';
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
        'date_act',
        'website',
        'facebook',
        'instagram',
        'tiktok',
        'nbr_etoiles',
        'whatsapp',
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
        return $this->hasMany(ActiviteImage::class, 'id_guide');
    }
    public function commentaires()
    {
        return $this->hasMany(Commentaire::class, 'id_guide');
    }
    public function langue_guides()
    {
        return $this->hasMany(LangueGuide::class, 'id_guide');
    }
    public function type_activite()
    {
        return $this->hasMany(TypeActivite::class, 'id_guide');
    }
}

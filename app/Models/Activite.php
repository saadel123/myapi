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
        'image',
        'nb_visite'
    ];
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
        return $this->hasMany(CommentPartage::class, 'id_activite');
    }
    public function type_activite()
    {
        return $this->hasMany(TypeActivite::class, 'id_activite');
    }
}

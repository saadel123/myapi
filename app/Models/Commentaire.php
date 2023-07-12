<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commentaire extends Model
{
    use HasFactory;
    protected $table = 'commentaires';
    protected $fillable = [
        'commentaire',
        'user_id',
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'parent_id',
        'id_restaurant',
        'id_activite',
        'id_guide',
    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
    public function riad()
    {
        return $this->belongsTo(Riad::class, 'id_riad');
    }
    public function maison()
    {
        return $this->belongsTo(MaisonHotes::class, 'id_maison_hote');
    }
    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class, 'id_restaurant');
    }
    public function user()
    {
         return $this->belongsTo(User::class, 'user_id')->select('id','nom','prenom','pseudo','pseudo','avatar');
    }
      public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
     public function activite()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
}


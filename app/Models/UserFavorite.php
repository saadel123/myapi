<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserFavorite extends Model
{
    use HasFactory;
    protected $table = 'user_favorites';
    protected $fillable = [
        'user_id',
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'id_restaurant',
        'id_activite',
        'id_guide',
        'id_apparthotels',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
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
    public function activite()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function apparthotel()
    {
        return $this->belongsTo(Apparthotels::class, 'id_apparthotels');
    }
}

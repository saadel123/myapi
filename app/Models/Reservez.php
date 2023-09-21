<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservez extends Model
{
    use HasFactory;
    protected $table = 'reservezs';
    protected $fillable = [
        'username',
        'email',
        'tel',
        'subject',
        'message',
        'user_id',
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'id_restaurant',
        'id_activite',
        'id_guide',
        'id_apparthotels',

    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
    public function riad()
    {
        return $this->belongsTo(Riad::class, 'id_riad');
    }
    public function maison_hote()
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

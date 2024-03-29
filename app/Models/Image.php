<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;
    protected $table = 'images';
    protected $fillable = [
        'image',
        'libelle',
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'id_apparthotels',
        // 'id_villa'
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
    public function apparthotel()
    {
        return $this->belongsTo(Apparthotels::class, 'id_apparthotels');
    }
}

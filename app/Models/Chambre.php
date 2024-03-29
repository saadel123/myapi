<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chambre extends Model
{
    use HasFactory;
    protected $table = 'chambres';
    protected $fillable = [
        'options',
        'prix',
        'nbr_personnes',
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'id_type_chambre',
        'type',
        'id_apparthotels',
    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
    public function riad()
    {
        return $this->belongsTo(Hotel::class, 'id_riad');
    }
    public function maison()
    {
        return $this->belongsTo(MaisonHotes::class, 'id_maison_hote');
    }
    public function type_chambres()
    {
        return $this->belongsTo(Type_chambre::class,'id_type_chambre');
    }
    public function apparthotel()
    {
        return $this->belongsTo(Apparthotels::class, 'id_apparthotels');
    }
}

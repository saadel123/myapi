<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HebergementService extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_hotel',
        'id_riad',
        'id_maison_hote',
        'id_service',
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
    public function service()
    {
        return $this->belongsTo(Service::class, 'id_service');
    }
}

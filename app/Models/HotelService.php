<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HotelService extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_hotel',
        'id_service',
    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
    public function service()
    {
        return $this->belongsTo(Service::class, 'id_service');
    }
}

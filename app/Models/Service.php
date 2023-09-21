<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_hotel',
        'id_apparthotels',
        // 'id_villa',
        'nom',
        'avatar',
    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
}

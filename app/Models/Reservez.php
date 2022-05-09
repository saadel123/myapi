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
        'id_maisons'
    ];
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'id_hotel');
    }
}

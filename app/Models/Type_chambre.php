<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type_chambre extends Model
{
    use HasFactory;
    protected $table = 'type_chambres';
    protected $fillable = [
        'type',
        'options',
        'prix',
        'nbr_personnes',
        'id_chambre'
    ];
    public function chambre()
    {
        return $this->belongsTo(Chambre::class, 'id_chambre');
    }
}

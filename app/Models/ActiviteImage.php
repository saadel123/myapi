<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActiviteImage extends Model
{
    use HasFactory;
    protected $fillable = [
        'image',
        'libelle',
        'id_lieux',
        'id_activite',
        'id_guide',
        'id_lieux',
    ];

    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function activite()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
    public function lieux()
    {
        return $this->belongsTo(Lieux::class, 'id_lieux');
    }
}

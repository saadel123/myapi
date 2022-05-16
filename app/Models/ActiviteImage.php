<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActiviteImage extends Model
{
    use HasFactory;

    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function activite()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
}

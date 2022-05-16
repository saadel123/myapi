<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LangueGuide extends Model
{
    use HasFactory;
    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function langue()
    {
        return $this->belongsTo(Langue::class, 'id_langue');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeActivite extends Model
{

    use HasFactory;
    protected $fillable = [
        'activite',
        'duree',
        'prix_actv',
        'id_activite',
        'id_guide',
    ];
    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function activte()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
}

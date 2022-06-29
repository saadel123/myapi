<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentPartage extends Model
{
    use HasFactory;
    protected $table = 'comment_partages';
    protected $fillable = [
        'commentaire',
        'user_id',
        'id_partage',
        'id_lieux',
        'id_gastronomie',
        'id_activite',
        'id_guide'
    ];
    public function partage()
    {
        return $this->belongsTo(Partage::class, 'id_partage');
    }
    public function lieux()
    {
        return $this->belongsTo(Lieux::class, 'id_lieux');
    }
    public function gastronomie()
    {
        return $this->belongsTo(Gastronomie::class, 'id_gastronomie');
    }
    public function guide()
    {
        return $this->belongsTo(GuidesTouristique::class, 'id_guide');
    }
    public function activite()
    {
        return $this->belongsTo(Activite::class, 'id_activite');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}

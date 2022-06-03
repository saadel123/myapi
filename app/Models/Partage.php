<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partage extends Model
{
    use HasFactory;
    protected $table = 'partages';
    protected $fillable = [
        'user_id',
        'ville_id',
        'description',
        'titre',
        'slug',
        'image'
    ];
    public function commentpartage()
    {
        return $this->hasMany(CommentPartage::class, 'id_partage');
    }

}

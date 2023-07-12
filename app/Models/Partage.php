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
        'image',
        'seo_titre' ,
        'seo_description' ,
        'seo_keywords' 
    ];
    public function commentpartage()
    {
        return $this->hasMany(CommentPartage::class, 'id_partage');
    }
     public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

}


<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lieux extends Model
{
    use HasFactory;
    protected $table = 'lieux';
    protected $fillable = [
        'user_id',
        'ville_id',
        'titre',
        'slug',
        'description',
        'image',
        'seo_titre' ,
        'seo_description' ,
        'seo_keywords' 
    ];
    public function commentaires(){
        return $this->hasMany(CommentPartage::class,'id_lieux');
    }
    public function images(){
        return $this->hasMany(ActiviteImage::class,'id_lieux');
    }
    public function user(){
      return $this->belongsTo(User::class,'user_id');
    }
}

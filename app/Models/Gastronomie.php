<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gastronomie extends Model
{
    use HasFactory;
    protected $table = 'gastronomies';
    protected $fillable = [
        'user_id',
        'ville_id',
        'titre',
        'slug',
        'description',
        'image'
    ];
    public function commentaires(){
        return $this->hasMany(CommentPartage::class,'id_gastronomie');
    }
    public function user(){
      return $this->belongsTo(User::class,'user_id');
    }

}

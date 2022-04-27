<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ville extends Model
{
    use HasFactory;

    public function hotels() 
    {
        return $this->hasMany(Hotel::class);
    }
    public function riads() 
    {
        return $this->hasMany(Riad::class);
    }
    public function maisons() 
    {
        return $this->hasMany(MaisonHotes::class);
    }
}

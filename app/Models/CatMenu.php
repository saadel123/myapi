<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CatMenu extends Model
{
    use HasFactory;
    protected $table = 'cat_menus';
    protected $fillable = [
        'nom',
        'id_restaurant',
    ];
    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class, 'id_restaurant');
    }
    public function menus()
    {
        return $this->hasMany(Menu::class, 'id_cat');
    }

}

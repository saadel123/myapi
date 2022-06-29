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
        'avatar',
    ];

    public function menus()
    {
        return $this->hasMany(Menu::class, 'id_ligne_menu');
    }
    // public function menus()
    // {
    //     return $this->hasMany(Menu::class, 'id_cat');
    // }

}

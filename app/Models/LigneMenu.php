<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LigneMenu extends Model
{
    use HasFactory;
    protected $table = 'ligne_menus';
    protected $fillable = [
        'id_restaurant',
        'id_menu',
        'id_cat_menu',
    ];

    public function cat_menu()
    {
        return $this->belongsTo(CatMenu::class, 'id_cat_menu');
    }
    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class, 'id_restaurant');
    }
    public function menus()
    {
        return $this->hasMany(Menu::class, 'id_menu');
    }



    //  public function menus()
    // {
    //     return $this->belongsToMany(Menu::class, 'id_menu');
    // }

}

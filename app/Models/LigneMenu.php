<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Menu;

class LigneMenu extends Model
{
    use HasFactory;
    protected $table = 'ligne_menus';
    protected $fillable = [
        'user_id',
        'id_restaurant',
        'id_cat_menu'
    ];
    public function restaurant()
    {
        return $this->belongsTo(restaurant::class, 'id_restaurant');
    }
    public function categoriemenu()
    {
        return $this->belongsTo(CategorieMenu::class, 'id_cat_menu');
    }
    public function menus()
    {
        return $this->hasMany(Menu::class, 'id_ligne_menu');
    }

    static function storeMenus($array,$id_ligne_menu)
    {        
       // $listMenu = [];
        foreach ($array as $menu) { 
                $objMenu = Menu::create([
                    'nom' => $menu['menu'],
                    'description' => $menu['description'],
                    'prix' => $menu['prix'],
                    'id_ligne_menu' => $id_ligne_menu                    
                ]);
             // array_push($listMenu,$objMenu);
        }

        return $array;
    }

}

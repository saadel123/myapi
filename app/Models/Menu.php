<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;
    protected $table = 'menus';
    protected $fillable = [
        'nom',
        'description',
        'prix',
        'id_ligne_menu'
    ];
    // public function catmenu()
    // {
    //     return $this->belongsTo(CatMenu::class, 'id_menu');
    // }
    // public function ligne_menu()
    // {
    //     return $this->belongsTo(LigneMenu::class, 'id_menu');
    // }
    // public function ligne_menu()
    // {
    //     return $this->belongsTo(LigneMenu::class, 'id_menu');
    // }
}

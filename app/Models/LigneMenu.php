<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LigneMenu extends Model
{
    use HasFactory;
    protected $table = 'ligne_menus';
    protected $fillable = [
        'user_id',
        'id_restaurant',
        'id_menu',
        'id_cat_menu'
    ];
}

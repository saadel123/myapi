<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategorieMenu extends Model
{
    use HasFactory;
    protected $table = 'categorie_menu';
    protected $fillable = [
        'nom',
    ];
    

}

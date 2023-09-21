<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public function hotels()
    {
        return $this->hasMany(Hotel::class, 'user_id');
    }
    public function riads()
    {
        return $this->hasMany(Riad::class, 'user_id');
    }
    public function maisons()
    {
        return $this->hasMany(MaisonHotes::class, 'user_id');
    }
    public function temoignages()
    {
        return $this->hasMany(Temoignage::class, 'user_id');
    }
    public function comments()
    {
        return $this->hasMany(CommentPartage::class, 'user_id');
    }
    public function activites()
    {
        return $this->hasMany(Activite::class, 'user_id');
    }
    public function guide_touristique()
    {
        return $this->hasMany(GuidesTouristique::class, 'user_id');
    }
    public function lieux()
    {
        return $this->hasMany(Lieux::class, 'user_id');
    }
    public function gastronomie()
    {
        return $this->hasMany(Gastronomie::class, 'user_id');
    }
      public function favorites()
    {
        return $this->hasMany(UserFavorite::class, 'user_id');
    }
    public function hotelFavorites()
    {
        return $this->belongsToMany(Hotel::class, 'user_favorites')->withTimestamps();
    }
    public function apparthotels()
    {
        return $this->hasMany(Apparthotels::class, 'user_id');
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'role_id',
        'nom',
        'prenom',
        'name',
        'email',
        'password',
        'pseudo',
        'type_service',
        'email_verified_at',
        'code_verification',
        'is_verifier',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [

        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}

<?php

namespace Database\Factories;

use App\Models\Hotel;
use Illuminate\Database\Eloquent\Factories\Factory;

class HotelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    protected $model = Hotel::class;
 
    public function definition()
    {
        return [
            'user_id' => $this->faker->user_id,
            'nom' => $this->faker->nom,
            'description' => $this->faker->description,
            'adresse' => $this->faker->adresse,
            'email' => $this->faker->email,
            'instagram' => $this->faker->instagram,
            'tiktok' => $this->faker->tiktok,
        ];
    }
}

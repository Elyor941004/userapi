<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class UsersFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nick_name'=>$this->faker->name,
            'email' =>$this->faker->unique()->safeEmail,
            'firstname' =>$this->faker->firstName,
            'lastname'=>$this->faker->lastName,
            'password'=>'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
            'role_id'=>0
        ];
    }
}

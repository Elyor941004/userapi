<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public $products = ['Apple', 'Ananas', 'quince', 'cherry', 'watermelon'];
    public function definition()
    {
        $products = $this->products;
        return [
            'title'=>$products[array_rand($products)],
            'img'=>'https://source.unsplash.com/random',
            'category_id'=> rand(1, 10)
        ];
    }
}

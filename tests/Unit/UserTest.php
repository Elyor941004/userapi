<?php

namespace Tests\Unit;

use Tests\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_example()
    {
         $this->assertDatabaseHas('user', [
           'email'=>'elyor941004@inbox.ru',
        ]);
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory()->create([
            'name' => 'Admin',
            'type' => 1,
            'phone' => '+998 99 999 99 99',
            'email' => 'admin1111@gmail.com',
            'password' => Hash::make('admin1111'),
        ]);

        $this->call([
            UserSeeder::class,
        ]);
        // \App\Models\User::factory(10)->create();

    }
}

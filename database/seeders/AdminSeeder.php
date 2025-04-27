<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::create([
            'name' => 'Admin',
            'code' => bin2hex(random_bytes(20)),
            'email' => 'admin@gmail.com', // << email jadi 'admin'
            'email_verified_at' => now(),
            'password' => Hash::make('12345'), // << password di-hash dari '12345'
            'phone_number' => '08174835153',
            'remember_token' => Str::random(10),
            'avatar' => 'img/avatar/a.png'
        ]);

        $admin->syncRoles('admin');

        $faker = \Faker\Factory::create();

        for ($i = 1; $i < 10; $i++) {
            $user = User::create([
                'name' => $faker->name(),
                'code' => bin2hex(random_bytes(20)),
                'email' => $faker->unique()->safeEmail(),
                'email_verified_at' => now(),
                'password' => Hash::make('12345'), // semua dummy user juga password '12345'
                'phone_number' => $faker->phoneNumber(),
                'remember_token' => Str::random(10),
                'avatar' => 'img/avatar/' . substr($faker->name(), 0, 1) . '.png'
            ]);

            $user->syncRoles('admin');
        }
    }
}

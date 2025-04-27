<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user1 = User::create([
            'name' => 'User Ijat',
            'code' => bin2hex(random_bytes(20)),
            'email' => 'user@ijat.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345'),
            'phone_number' => '081111111111',
            'remember_token' => Str::random(10),
            'avatar' => 'img/avatar/u.png',
        ]);
        $user1->syncRoles('user');

        $user2 = User::create([
            'name' => 'Receptionist Ijat',
            'code' => bin2hex(random_bytes(20)),
            'email' => 'resep@ijat.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345'),
            'phone_number' => '082222222222',
            'remember_token' => Str::random(10),
            'avatar' => 'img/avatar/r.png',
        ]);
        $user2->syncRoles('receptionist');
    }
}

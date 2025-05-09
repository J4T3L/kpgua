<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
           
            array (
                'avatar' => 'img/avatar/G.png',
                'code' => '54644b0620df5e5141790d890ac57416fe565594',
                'created_at' => '2025-04-27 14:34:59',
                'email' => 'utremblay@example.net',
                'email_verified_at' => '2025-04-27 14:34:59',
                'id' => 26,
                'name' => 'Buck Denesik',
                'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
                'phone_number' => '+17165693026',
                'remember_token' => 'XUPNdH8nqY',
                'updated_at' => '2025-04-27 14:34:59',
            ),
            1 => 
            array (
                'avatar' => 'img/avatar/a.png',
                'code' => 'c6894a09c7403506614ad5d7a72bd3d9a4bd0599',
                'created_at' => '2025-04-27 14:35:01',
                'email' => 'admin@gmail.com',
                'email_verified_at' => '2025-04-27 14:35:01',
                'id' => 201,
                'name' => 'Admin',
                'password' => '$2y$10$rp5OmcIayRokfjuLJ061c.zQTL6XeSJDqzvFWgze1Y6RHNs6JuE8K',
                'phone_number' => '08174835153',
                'remember_token' => 'BvfVJP94ZP3fZNwrxG0rA9vUzfEFsdh2vZ0tjcy7RM7ExH7Jqd0orSHYrSUs',
                'updated_at' => '2025-04-27 14:35:01',
            ),
            2 =>
            array (
                'avatar' => 'img/avatar/u.png',
                'code' => 'a35983c3aa68c9abdcb4a0f027440c0f4388367f',
                'created_at' => '2025-04-27 17:12:00',
                'email' => 'user@ijat.com',
                'email_verified_at' => '2025-04-27 17:12:00',
                'id' => 261,
                'name' => 'User Ijat',
                'password' => '$2y$10$P0.TsbwOqJIB3bHBZGgZl.w.MvPEoAQtt0sAVf8HJUTB.ntwViNv2',
                'phone_number' => '081111111111',
                'remember_token' => '4MvQEgFTVB',
                'updated_at' => '2025-04-27 17:12:00',
            ),
            3 => 
            array (
                'avatar' => 'img/avatar/r.png',
                'code' => '75f47d841927efdc9e38552860fed9aed7ed8581',
                'created_at' => '2025-04-27 17:12:01',
                'email' => 'resep@ijat.com',
                'email_verified_at' => '2025-04-27 17:12:01',
                'id' => 262,
                'name' => 'Receptionist Ijat',
                'password' => '$2y$10$gykLMKm8oKsgMx3/ytkbJeUTkhysFlOMIsatPMcZZSNCleT7hvNyO',
                'phone_number' => '082222222222',
                'remember_token' => 'mo0mDUf2a2',
                'updated_at' => '2025-04-27 17:12:01',
            ),
        ));
        
        
    }
}
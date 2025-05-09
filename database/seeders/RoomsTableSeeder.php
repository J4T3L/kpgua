<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoomsTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('rooms')->insertOrIgnore([
            [
                'id' => 12,
                'code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'name' => 'Murphy',
                'type' => 'kos',
                'description' => 'You can easily turn your bedroom into a living room',
                'total_rooms' => 200,
                'available' => 113,
                'price' => 420,
                'explanation' => '<p>Natoque mus pede vitae molestie letius tortor fermentum parturient...</p>',
                'image' => 'img/rooms/Pz5spN62HOT1NCdo4QN57YE8mlZhl57ADgnlqeiY.jpg',
                'created_at' => '2025-04-27 14:34:58',
                'updated_at' => '2025-04-28 03:45:27',
            ],
        ]);
    }
}
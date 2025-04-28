<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ReservationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('reservations')->delete();
        
        \DB::table('reservations')->insert(array (
            0 => 
            array (
                'check_in' => '2025-03-20',
                'check_out' => '2025-03-18',
                'code' => 'HLX-680E40982DCD720250427',
                'created_at' => '2025-04-27 14:35:05',
                'date' => '2025-03-01',
                'id' => 500,
                'message' => 'Ut quae blanditiis ipsa atque et excepturi.',
                'room_id' => 12,
                'status' => 'confirmed',
                'total_price' => '60645',
                'total_rooms' => '2',
                'updated_at' => '2025-04-27 14:35:05',
                'user_id' => 13,
            ),
        ));
        
        
    }
}
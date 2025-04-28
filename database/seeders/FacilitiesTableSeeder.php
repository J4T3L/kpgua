<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FacilitiesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('facilities')->delete();
        
        \DB::table('facilities')->insert(array (
            0 => 
            array (
                'code' => 'a8deed618b02ec39784c7e63e4d44009202e1991',
                'created_at' => '2025-04-27 14:52:11',
                'description' => 'motor only',
                'explanation' => '<p>awjdbd</p>',
                'id' => 8,
                'image' => 'img/facilities/9A4fAH9YXB2LoPkT1TX3WduIUjMbzoS2uQUu5i8K.jpg',
                'name' => 'parkir',
                'rate' => '0',
                'type' => 'room',
                'updated_at' => '2025-04-28 03:03:05',
                'views' => '3',
            ),
        ));
        
        
    }
}
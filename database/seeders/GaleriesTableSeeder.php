<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class GaleriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('galeries')->delete();
        
        \DB::table('galeries')->insert(array (
            0 => 
            array (
                'code' => '6bc27a1b1f3c88fae50d7395182c5620b69ae2fb',
                'created_at' => '2025-04-27 14:34:58',
                'id' => 2,
                'image' => 'img/galeries/g-2.jpg',
                'title' => 'Café 1',
                'updated_at' => '2025-04-27 14:34:58',
            ),
        ));
        
        
    }
}
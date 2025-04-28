<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RoomsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('rooms')->delete();
        
        \DB::table('rooms')->insert(array (
            0 => 
            array (
                'available' => '113',
                'code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'created_at' => '2025-04-27 14:34:58',
                'description' => 'You can easily turn your bedroom into a living room',
                'explanation' => '<p>Natoque mus pede vitae molestie letius tortor fermentum parturient. Magna vivamus lacinia platea proin duis nam montes. Hac rutrum augue nullam aenean diam ex enim. Netus platea class fringilla vitae adipiscing ad. Hac sagittis ridiculus tellus parturient consectetuer gravida tincidunt cras ex vehicula sollicitudin. Sollicitudin netus ac efficitur elit ornare litora taciti vestibulum auctor. Maximus sodales cursus convallis quis malesuada risus imperdiet dolor iaculis.</p>',
                'id' => 12,
                'image' => 'img/rooms/Pz5spN62HOT1NCdo4QN57YE8mlZhl57ADgnlqeiY.jpg',
                'name' => 'Murphy',
                'price' => '420',
                'rate' => '4.15',
                'total_rooms' => '200',
                'updated_at' => '2025-04-28 03:45:27',
                'views' => '28140',
            ),
        ));
        
        
    }
}
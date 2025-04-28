<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AboutsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('abouts')->delete();
        
        \DB::table('abouts')->insert(array (
            0 => 
            array (
                'created_at' => '2025-04-27 17:22:05',
                'id' => 2,
                'image' => 'img/about/XfNZW9uSe4fYct8X6gBbDt2d88frCLC1X4NfxnSi.png',
                'text' => 'Graha Indah adalah pilihan terbaik untuk hunian kos dan villa yang nyaman, aman, dan strategis. Kami menyediakan berbagai fasilitas lengkap dan pelayanan ramah untuk memenuhi kebutuhan Anda, baik untuk jangka pendek maupun jangka panjang. Dengan lokasi yang premium, Graha Indah menjadi tempat ideal bagi mahasiswa, pekerja, hingga wisatawan yang mencari kenyamanan dan ketenangan.',
                'title' => 'Graha Indah',
                'updated_at' => '2025-04-28 02:35:58',
            ),
        ));
        
        
    }
}
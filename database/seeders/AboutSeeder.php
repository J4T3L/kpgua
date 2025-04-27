<?php

namespace Database\Seeders;

use App\Models\About;
use Illuminate\Database\Seeder;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        About::create([
            'title' => 'Tentang Graha Indah',
            'text' => 'Graha Indah adalah pilihan terbaik untuk hunian kos dan villa yang nyaman, aman, dan strategis. Kami menyediakan berbagai fasilitas lengkap dan pelayanan ramah untuk memenuhi kebutuhan Anda, baik untuk jangka pendek maupun jangka panjang. Dengan lokasi yang premium, Graha Indah menjadi tempat ideal bagi mahasiswa, pekerja, hingga wisatawan yang mencari kenyamanan dan ketenangan.',
            'image' => 'img/about/about.jpg'
        ]);
    }
}

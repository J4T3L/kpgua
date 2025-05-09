<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration {
    public function up(): void
    {
        // Ubah kolom type menjadi enum baru
        DB::statement("ALTER TABLE rooms MODIFY COLUMN type ENUM('villa', 'kos', 'rumah') NOT NULL");
    }

    public function down(): void
    {
        // Kembalikan ke tipe sebelumnya (ubah sesuai kondisi awal jika ada)
        DB::statement("ALTER TABLE rooms MODIFY COLUMN type VARCHAR(255) NOT NULL");
    }
};

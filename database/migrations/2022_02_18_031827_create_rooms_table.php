<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique(); // kode unik untuk room
            $table->string('name');
            $table->enum('type', ['villa', 'kos', 'rumah']); // jenis properti
            $table->text('description');
            $table->integer('total_rooms');
            $table->integer('available'); // jumlah yang masih tersedia
            $table->unsignedBigInteger('price'); // harga per malam/bulan
            $table->text('explanation');
            $table->string('image'); // path gambar
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
};

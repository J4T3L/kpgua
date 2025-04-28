<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            AboutsTableSeeder::class,
            FacilitiesTableSeeder::class,
            FacilityReviewsTableSeeder::class,
            GaleriesTableSeeder::class,
            ReservationsTableSeeder::class,
            RolesTableSeeder::class,
            PermissionsTableSeeder::class,
            ModelHasRolesTableSeeder::class,
            RoleHasPermissionsTableSeeder::class,
            RoomHasFacilitiesTableSeeder::class,
            RoomReviewsTableSeeder::class,
            RoomsTableSeeder::class,
            UsersTableSeeder::class,
        ]);
        $this->call(UsersTableSeeder::class);
    }
}

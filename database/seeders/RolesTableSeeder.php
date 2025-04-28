<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('roles')->delete();
        
        \DB::table('roles')->insert(array (
            0 => 
            array (
                'created_at' => '2025-04-27 14:34:58',
                'guard_name' => 'web',
                'id' => 1,
                'name' => 'admin',
                'updated_at' => '2025-04-27 14:34:58',
            ),
            1 => 
            array (
                'created_at' => '2025-04-27 14:34:58',
                'guard_name' => 'web',
                'id' => 2,
                'name' => 'user',
                'updated_at' => '2025-04-27 14:34:58',
            ),
            2 => 
            array (
                'created_at' => '2025-04-27 14:34:58',
                'guard_name' => 'web',
                'id' => 3,
                'name' => 'receptionist',
                'updated_at' => '2025-04-27 14:34:58',
            ),
        ));
        
        
    }
}
<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RoomReviewsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('room_reviews')->delete();
        
        \DB::table('room_reviews')->insert(array (
            0 => 
            array (
                'code' => '9787df8978c3b10050b5592f2d6c627829084a18',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '2022-04-29',
                'id' => 12,
                'message' => 'Voluptas est velit cumque consequatur sed corrupti.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 2,
            ),
            1 => 
            array (
                'code' => '8e91f6c13c17f6b24d8bd56a3d60dc41885c0bd2',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '1998-11-24',
                'id' => 26,
                'message' => 'Quae libero cum dolor dolor illum eius.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '3',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 3,
            ),
            2 => 
            array (
                'code' => '26126e08feecc4c1ed528e0694476f00f78eb7c3',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '2018-06-15',
                'id' => 40,
                'message' => 'Totam dolorum quidem velit assumenda.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 4,
            ),
            3 => 
            array (
                'code' => '68d7c8edf42509aa0b824dd714589c0587477a89',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '1992-09-25',
                'id' => 54,
                'message' => 'Debitis et est voluptas quod.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 5,
            ),
            4 => 
            array (
                'code' => '57667559e25f71c53015de17f88b0229609c971e',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '1988-06-08',
                'id' => 68,
                'message' => 'Illo quasi est accusamus saepe pariatur in.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '3',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 6,
            ),
            5 => 
            array (
                'code' => '69cf2eb527668f94563cf00a99ffe0a282648386',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '2005-11-22',
                'id' => 82,
                'message' => 'Aliquid quia aut dolores.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 7,
            ),
            6 => 
            array (
                'code' => '0b03754f3fa87f0136e3fba414e177d760533353',
                'created_at' => '2025-04-27 14:35:02',
                'date' => '2016-08-24',
                'id' => 96,
                'message' => 'Commodi ipsum maxime corporis tempore voluptates.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:02',
                'user_id' => 8,
            ),
            7 => 
            array (
                'code' => '2c2f3a32d4f52f41e0f3f75c081328c85eadc0fa',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1972-09-03',
                'id' => 110,
                'message' => 'Voluptate et consequuntur molestiae dolores saepe rerum omnis.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '3',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 9,
            ),
            8 => 
            array (
                'code' => 'f8a5dbbb3848b2bfa678a89ae41f38409a49e068',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1977-08-25',
                'id' => 124,
                'message' => 'Error sed voluptatum qui laborum eum suscipit recusandae.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 10,
            ),
            9 => 
            array (
                'code' => 'aeeb6141b89b4dc8c5a9ef4e3c90ef4055b89e4e',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1981-12-11',
                'id' => 138,
                'message' => 'Et assumenda dolore illo eos nihil non et.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 11,
            ),
            10 => 
            array (
                'code' => 'f6237a9758c6f9e449b4c124464eaa73f7f10ec4',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '2018-03-17',
                'id' => 152,
                'message' => 'Possimus minima numquam molestiae consequatur repellendus atque.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 12,
            ),
            11 => 
            array (
                'code' => 'a5bdf4c580931eed5e0161fe40b7451b3bb9d944',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1994-07-07',
                'id' => 166,
                'message' => 'Expedita accusantium sit ea nesciunt ut velit soluta modi.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '3',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 13,
            ),
            12 => 
            array (
                'code' => '2ab79c7c6dd006fac6b4ef6df13fd7ccd602e352',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1972-09-27',
                'id' => 180,
                'message' => 'Et nostrum dolorem fugiat et earum reiciendis.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 14,
            ),
            13 => 
            array (
                'code' => '62ae186a010b6bd2343b210354c7a5e9f3efb2ab',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '2021-08-16',
                'id' => 194,
                'message' => 'Non quo dolores nulla quidem rerum.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 15,
            ),
            14 => 
            array (
                'code' => 'f2ff6c021cf2fe1a566711fa3df6298cdd219258',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '2020-03-01',
                'id' => 208,
                'message' => 'Non voluptate culpa corrupti et quidem iusto non.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 16,
            ),
            15 => 
            array (
                'code' => 'f93ff6fee0a5cbaf7644ba3ae7efc8639a7a4a91',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1995-04-13',
                'id' => 222,
                'message' => 'Perferendis et impedit est voluptatum.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 17,
            ),
            16 => 
            array (
                'code' => 'c51de02a98ff72d1c79243abfdff4eebd192bc8b',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '2013-08-30',
                'id' => 236,
                'message' => 'Perspiciatis dicta optio tempore tenetur ea nisi.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '3',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 18,
            ),
            17 => 
            array (
                'code' => '5d136bc1fe6d4c77f7b21ec1ff85cbb769d17eff',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '2012-11-12',
                'id' => 250,
                'message' => 'Saepe labore voluptate molestiae eligendi recusandae.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 19,
            ),
            18 => 
            array (
                'code' => '3e9ac41ac058cd6c8bd26de09318da4b6d086349',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1995-09-29',
                'id' => 264,
                'message' => 'Maxime quibusdam velit deserunt omnis.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '5',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 20,
            ),
            19 => 
            array (
                'code' => '91f097048026440c3bc807f45d3d9a83c2be7036',
                'created_at' => '2025-04-27 14:35:03',
                'date' => '1971-02-26',
                'id' => 278,
                'message' => 'Dolores perspiciatis id quidem illo aut.',
                'room_code' => 'd0694a03e5dd6aac9814f28bb14a90effea15b01',
                'star' => '4',
                'updated_at' => '2025-04-27 14:35:03',
                'user_id' => 21,
            ),
        ));
        
        
    }
}
<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Audiences;
use Faker\Generator as Faker;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class audienceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        
            for ($i = 0; $i < 100; $i++) {
                DB::table('audiences')->insert([
                    'name' => Str::random(10),
                    'email' => Str::random(10).'@gmail.com',
                    'source' => Str::random(10),
                    'status' => Str::random(1),
                    'note' => Str::random(10),
                ]);
            }
    }
}

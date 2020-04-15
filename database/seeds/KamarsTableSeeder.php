<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Kamar;
use Carbon\Carbon;

class KamarsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create("id_ID");

        for($i = 1; $i<=50; $i++){
            kamar::create([
                'nama' => $faker->name,
                'ruangan' => $faker->Address,
                'kelas' => $faker->Address,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}

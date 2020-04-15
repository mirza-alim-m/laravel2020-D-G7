<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Pasien;
use Carbon\Carbon;

class PasiensTableSeeder extends Seeder
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
            pasien::create([
                'nama' => $faker->name,
                'alamat' => $faker->address,
                'kecamatan' => $faker->address,
                'no_hp' => $faker->e164PhoneNumber,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}

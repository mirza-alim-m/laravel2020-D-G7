<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Dokter;
use Carbon\Carbon;

class DoktersTableSeeder extends Seeder
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
            Dokter::create([
                'nama' => $faker->name,
                'alamat' => $faker->address,
                'email' => $faker->safeEmail,
                'no_hp' => $faker->e164PhoneNumber,
                'nip' => $faker->e164PhoneNumber,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}

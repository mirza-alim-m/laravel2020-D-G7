<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Pegawai;
use Carbon\Carbon;

class PegawaisTableSeeder extends Seeder
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
            Pegawai::create([
                'nama' => $faker->name,
                'jabatan' => $faker->jobTitle,
                'alamat' => $faker->address,
                'email' => $faker->safeEmail,
                'no_hp' => $faker->e164PhoneNumber,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}

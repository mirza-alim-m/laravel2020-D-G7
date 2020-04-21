<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(DoktersTableSeeder::class);
        $this->call(KamarsTableSeeder::class);
        $this->call(PasiensTableSeeder::class);
        $this->call(PegawaisTableSeeder::class);
    }
}

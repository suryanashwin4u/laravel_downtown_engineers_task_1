<?php

namespace Database\Seeders;

use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();

        $limit = 20;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('posts')->insert([
                'category' => $faker->sentence($nbWords = 6, $variableNbWords = true),
                'product' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
                'created_at' => \Carbon\Carbon::now(),
                'Updated_at' => \Carbon\Carbon::now(),
            ]);
        }
    }
}

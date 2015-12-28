<?php

use Illuminate\Database\Seeder;

class TagsTableSeeder extends Seeder 
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = ['php','mysql','js','html','forms','front-end','css'];

        foreach($data as $tagName) {
            $tag = new \App\Tag();
            $tag->name = $tagName;
            $tag->save();
        }
    }
}

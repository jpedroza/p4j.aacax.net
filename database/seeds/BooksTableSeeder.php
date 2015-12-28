<?php

use Illuminate\Database\Seeder;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $format_id = \App\Format::where('first_name','=','video')->pluck('id');
        DB::table('books')->insert([
        'created_at' => Carbon\Carbon::now()->toDateTimeString(),
        'updated_at' => Carbon\Carbon::now()->toDateTimeString(),
        'title' => 'screen cast',
		'link' => '1.mp4',
		'description' => 'a very witty description',
		'thumbnail' => 'thumbnail.png',
        'format_id' => $format_id,
        'user_id' => 1,
        ]);

        $format_id = \App\Format::where('first_name','=','video')->pluck('id');
        DB::table('books')->insert([
        'created_at' => Carbon\Carbon::now()->toDateTimeString(),
        'updated_at' => Carbon\Carbon::now()->toDateTimeString(), 
        'title' => 'pdf cast',
		'link' => '2.mp4',
		'description' => 'a very witty description',
		'thumbnail' => 'thumbnail.png',		
        'format_id' => $format_id, 
        'user_id' => 1,
        ]);

        $format_id = \App\Format::where('first_name','=','video')->pluck('id');
        DB::table('books')->insert([
        'created_at' => Carbon\Carbon::now()->toDateTimeString(),
        'updated_at' => Carbon\Carbon::now()->toDateTimeString(),
        'title' => 'flash cast',
		'link' => '3.mp4',
		'description' => 'a very witty description',
		'thumbnail' => 'thumbnail.png',
        'format_id' => $format_id,
        'user_id' => 1,
        ]);
    }
}

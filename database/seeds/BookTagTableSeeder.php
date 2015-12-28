<?php

use Illuminate\Database\Seeder;

class BookTagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $books =[
            'screen cast' => ['php','html','css','mysql'],
            'pdf cast' => ['php','html','css','js'],
            'flash cast' => ['forms','front-end','css','js']
        ];

        foreach($books as $title => $tags) {

            $book = \App\Book::where('title','like',$title)->first();

            foreach($tags as $tagName) {
                $tag = \App\Tag::where('name','LIKE',$tagName)->first();
                $book->tags()->save($tag);
            }
            
        }
    }
}

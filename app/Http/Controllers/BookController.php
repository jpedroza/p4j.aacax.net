<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

class BookController extends Controller {

    public function __construct() {
        # Put anything here that should happen before any of the other actions
    }

    /**
    * Responds to requests to GET /books
    */
    public function getIndex(Request $request) {

        // Get all the books "owned" by the current logged in users
        // Sort in descending order by id
        $books = \App\Book::where('user_id','=',\Auth::id())->orderBy('id','DESC')->get();

        return view('books.index')->with('books',$books);
    }

    /**
    * Responds to requests to GET /books/edit/{$id}
    */
    public function getEdit($id = null) {

        # Get this book and eager load its tags
        $book = \App\Book::with('tags')->find($id);

        if(is_null($book)) {
            \Session::flash('flash_message','Book not found.');
            return redirect('\books');
        }

        # Get all the possible authors so we can build the authors dropdown in the view
        $authorModel = new \App\Author();
        $authors_for_dropdown = $authorModel->getAuthorsForDropdown();

        # Get all the possible tags so we can include them with checkboxes in the view
        $tagModel = new \App\Tag();
        $tags_for_checkbox = $tagModel->getTagsForCheckboxes();

        /*
        Create a simple array of just the tag names for tags associated with this book;
        will be used in the view to decide which tags should be checked off
        */
        $tags_for_this_book = [];
        foreach($book->tags as $tag) {
            $tags_for_this_book[] = $tag->name;
        }

        return view('books.edit')
            ->with([
                'book' => $book,
                'authors_for_dropdown' => $authors_for_dropdown,
                'tags_for_checkbox' => $tags_for_checkbox,
                'tags_for_this_book' => $tags_for_this_book,
            ]);

    }

    /**
    * Responds to requests to POST /books/edit
    */
    public function postEdit(Request $request) {

        $book = \App\Book::find($request->id);

		$this->validate(
            $request,
            [
                'title' => 'required|min:5',
				'link' => 'required|min:5',
                'description' => 'required|min:5',
				'thumbnail' => 'required|min:5',		
            ]
        );
		
        $book->title = $request->title;
		$book->link = $request->link;
		$book->description = $request->description;
		$book->thumbnail = $request->thumbnail;
        $book->author_id = $request->author;

        $book->save();

        if($request->tags) {
            $tags = $request->tags;
        }
        else {
            $tags = [];
        }
        $book->tags()->sync($tags);

        \Session::flash('flash_message','The Selected Media was Updated.');
        return redirect('/books/edit/'.$request->id);

    }

    /**
     * Responds to requests to GET /books/create
     */
    public function getCreate() {

        $authorModel = new \App\Author();
        $authors_for_dropdown = $authorModel->getAuthorsForDropdown();

        # Get all the possible tags so we can include them with checkboxes in the view
        $tagModel = new \App\Tag();
        $tags_for_checkbox = $tagModel->getTagsForCheckboxes();

        return view('books.create')
            ->with('authors_for_dropdown',$authors_for_dropdown)
            ->with('tags_for_checkbox',$tags_for_checkbox);
    }

    /**
     * Responds to requests to POST /books/create
     */
    public function postCreate(Request $request) {

        $this->validate(
            $request,
            [
                'subject' => 'required|min:5',
				'description' => 'required|max:255',
            ]
        );

        # Enter the request into the request table
					$id=DB::table('requests')->insert([
						'created_at' => Carbon::now()->toDateTimeString(),
						'updated_at' => Carbon::now()->toDateTimeString(),
						'subject' => $request->input('subject'),
						'description' => $request->input('description'),
					]);					
					
        # Done
        \Session::flash('flash_message','Your Request was submitted');
        return redirect('/books');

    }

    /**
     * Responds to requests to GET /books/show/{title}
     */
    public function getShow($title = null) {

        return view('books.show')->with('title', $title);

    }

    /**
	*
	*/
    public function getConfirmDelete($book_id) {

        $book = \App\Book::find($book_id);

        return view('books.delete')->with('book', $book);
    }

    /**
	*
	*/
    public function getDoDelete($book_id) {

        $book = \App\Book::find($book_id);

        if(is_null($book)) {
            \Session::flash('flash_message','Media not found.');
            return redirect('\books');
        }

        if($book->tags()) {
            $book->tags()->detach();
        }

        $book->delete();

        \Session::flash('flash_message',$book->title.' was deleted.');

        return redirect('/books');

    }

}

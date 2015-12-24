<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

class VideoController extends Controller {  

	    public function getIndex () { 

			$books = \App\Book::all();
			return view('video.index')->with('books',$books); 
		}
	
		public function postComment(Request $request) { 
		
			        $this->validate(
						$request,
						[
							'videoid' => 'required|min:5',//this is a hidden field to track comments
							'comment' => 'required|max:255',
							'email' => 'required|email',
						]
					);
					echo "okay this is it";

					$id=DB::table('comments')->insert([
						'created_at' => Carbon::now()->toDateTimeString(),
						'updated_at' => Carbon::now()->toDateTimeString(),
						'title' => $request->input('videoid'),
						'email_address_of_commenter' => $request->input('email'), 
						'comment' => $request->input('comment'),
					]);					
					
					# Done
					\Session::flash('flash_message','Your comment has been submitted!');
					return redirect('/video');
			
		}	

}

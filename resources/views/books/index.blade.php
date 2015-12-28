@extends('layouts.master')

@section('title')
    Listing of Laravel Video Books
@stop

@section('content')
		<div class="jumbotron">
			<h1>Laravel Video Book Library</h1> 
			@if(sizeof($books) == 0)
				No Laravel Video Books found.
			@else
				<div class="row">
					<div class="col-sm-4">
						@foreach($books as $book) 
							<div class="row-to-play">
								<h2 style="display:none;">{{ $book->link }}</h2>						
								<h2>{{ $book->title }}</h2>
								<span><a href='/books/edit/{{$book->id}}'><button>Edit Metadata</button></a></span>
								<span><a href='/books/confirm-delete/{{$book->id}}'><button>Delete Record.</button></a><br></span>	 
							</div>
						@endforeach
					</div><!-- end of col-sm-4 -->
					<div id="vids"class="col-sm-6">
							<video width="640" controls>
							  <source src="vid/1.mp4" type="video/mp4">
							  Your browser does not support HTML5 video.
							</video>
					</div><!-- end of col-sm-6 -->	 
					
				</div><!-- end of row -->
			@endif
		</div><!-- end of jumbotron -->
@stop

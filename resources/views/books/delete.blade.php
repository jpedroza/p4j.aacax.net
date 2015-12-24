@extends('layouts.master')

@section('title')
    Permanently Drop a Laravel Video Book
@stop

@section('content')
	<div class="jumbotron">
			<h1>Remove the Laravel Video Book from the Library</h1>
			<p>
				Please confirm that you wish to permanently delete the Laravel Video Book:  <em>{{$book->title}}</em> from the Laravel Video Book Library?
			</p>

			<nav>
				<ul>
					<a href='/books/delete/{{$book->id}}'><button>YES</button></a>
				</ul>
			</nav>

	</div>
@stop

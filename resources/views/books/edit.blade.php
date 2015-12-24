@extends('layouts.master')

@section('title')
    Update the Laravel Video Book
@stop


@section('content')
	<div class="jumbotron">
				<div class="row">
				
				<div class="col-sm-6">
				<h1>Update Metadata</h1>

				@include('errors')

				<form method='POST' action='/books/edit'>

					<input type='hidden' value='{{ csrf_token() }}' name='_token'> 

					<input type='hidden' name='id' value='{{ $book->id }}'>

					<div class='form-group'>
						<label>* Titles (e.g., mp4 file name):</label>
						<input
							type='text'
							id='title'
							name='title'
							value='{{$book->title}}'
						>
					</div>
					
				    <div class='form-group'>
						<label>* Link:</label>  
						<input
							type='text'
							id='link'
							name='link'
							value='{{$book->link}}'
						>
					</div>
					
				    <div class='form-group'>
						<label>* Description:</label>  
						<input
							type='text'
							id='description'
							name='description'
							value='{{$book->description}}'
						>
					</div>	

				    <div class='form-group'>
						<label>* Thumbnail:</label>   
						<input
							type='text'
							id='thumbnail'
							name='thumbnail'
							value='{{$book->thumbnail}}'
						>
					</div>						

					<div class='form-group'>
						<label for='author'>* Content Reviewer, Contributor, Author:</label>
						<select name='author' id='author'>
							@foreach($authors_for_dropdown as $author_id => $author_name)

								{{ $selected = ($author_id == $book->author->id) ? 'selected' : '' }}

								<option value='{{ $author_id }}' {{ $selected }}> {{ $author_name }} </option>
							@endforeach
						</select>
					</div>

					<div class='form-group'>
						<label for='title'>* Thumbnail Image (e.g., "img/thumbnail.png"):</label>
						<input
							type='text'
							id='cover'
							name="cover"
							value='{{$book->cover}}'
							>
					</div>

					<div class='form-group'>
						<label for='Published'>Percent Complete (0 to 100):</label>
						<input
							type='text'
							id='published'
							name="published"
							value='{{$book->published}}'
							>
					</div>

					<div class='form-group'>
						<label for='title'>* Video Book Description:</label>
						<input
							type='text'
							id='purchase_link'
							name='purchase_link'
							value='{{$book->purchase_link}}'
							>
					</div>
				</div><!-- col-sm-6-->
				<div class="col-sm-6">
					<div class='form-group'>
						<label for='tags'>Metatags</label>
						@foreach($tags_for_checkbox as $tag_id => $tag)
							<?php $checked = (in_array($tag['name'],$tags_for_this_book)) ? 'CHECKED' : '' ?>
							<input {{ $checked }} type='checkbox' name='tags[]' value='{{$tag_id}}'> {{ $tag['name'] }}<br>
						@endforeach
					</div>
					<br>
					<nav>
						<ul>
							<li ><button id="sub" type="submit">Save All Changes</button></li>
						</ul>
					</nav>			
				</form>
				</div><!-- sm-col-6-->
				</div><!-- end of row -->
	</div><!-- end of jumbotron -->
@stop




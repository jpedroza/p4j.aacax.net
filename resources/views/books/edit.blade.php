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
						<label>* Media Title:</label>
						<input
							type='text'
							id='title'
							name='title'
							value='{{$book->title}}'
						>
					</div>
					
				    <div class='form-group'>
						<label>* Media File Name with Extension:</label>  
						<input
							type='text'
							id='link'
							name='link'
							value='{{$book->link}}'
						>
					</div>
					
				    <div class='form-group'>
						<label>* Media Description:</label>  
						<input
							type='text'
							id='description'
							name='description'
							value='{{$book->description}}'
						>
					</div>	

				    <div class='form-group'>
						<label>* Thumbnail File Name:</label>   
						<input
							type='text'
							id='thumbnail'
							name='thumbnail'
							value='{{$book->thumbnail}}'
						>
					</div>						

					<div class='form-group'>
						<label for='author'>* Media Type:</label>
						<select name='author' id='author'>
							@foreach($authors_for_dropdown as $author_id => $author_name)

								{{ $selected = ($author_id == $book->author->id) ? 'selected' : '' }}

								<option value='{{ $author_id }}' {{ $selected }}> {{ $author_name }} </option>
							@endforeach
						</select>
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




@extends('layouts.master')

@section('title')
    Contribute a Laravel Video Book for Review and Syndication
@stop

{{--
This `head` section will be yielded right before the closing </head> tag.
Use it to add specific things that *this* View needs in the head,
such as a page specific styesheets.
--}}

@section('head')
    {{-- <link href="/css/video/create.css" type='text/css' rel='stylesheet'> --}}
@stop

@section('content')
<!-- reload standard Laravel Video Books Marquee -->
	<div class="jumbotron">
			<div class="row">

				<h1>Request a Specific Laravel Video Book</h1>

				@include('errors')

				<form method='POST' action='/books/create'>

					<input type='hidden' value='{{ csrf_token() }}' name='_token'>

					<div class='form-group'>
						<label for="subject">* Subject:</label>
						<input
							type='text'
							id='subject'
							name='subject'
							value='{{ old('subject','Enter a Subject for your Request') }}'
						>
					</div>

					<div class='form-group'>
						<label for='title'>* Description:</label>
						<input
							type='text'
							id='description'
							name="description"
							value='{{ old('description',"Enter the Description of your Request") }}'
							>
					</div>
	
					<button type="submit" class="btn btn-primary">Request a Video Book on a Specific Topic</button>
				</form>
			</div><!-- end of row -->
	</div><!-- end of jumbotron -->

@stop


{{--
This `body` section will be yielded right before the closing </body> tag.
Use it to add specific things that *this* View needs at the end of the body,
such as a page specific JavaScript files.
--}}
@section('body')
    {{-- <script src="/js/video/create.js"></script> --}} 
@stop

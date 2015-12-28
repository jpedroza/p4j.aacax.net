@extends('layouts.master')

@section('title')
    Laravel Video Books
@stop

@section('content')
		<div class="jumbotron" id="jumbo">
			<h2 id="title">App Title: Laravel Video Books </h2>
			<h2 id="title">Purpose: A Functional Video Repository</h2>
			<h2 id="title">Instructions: Select a video from the bottom-left list click to select and press Play.</h2>
			<p id="middle">
				This Web Application is a functional prototype to assist those individuals like myself with a not so good memory.    
				This small video repository can be used as a video diary, a media album, a video library, etc.
			</p>
		</div><!-- end of top jumbotron -->
		<div class="jumbotron" id="jumbo">
				<div class="row">
					<div class="col-sm-4">
						@foreach($books as $book)
							<div class="row-to-play"> 
								<h2 style="display: none;">{{ $book->link }}</h2>							
								<h2>{{ $book->title }}</h2> 
								<h2>{{ $book->description }}</h2>
								<img class="imgthumbnail" src='img/{{ $book->thumbnail }}'> 
							</div>
						@endforeach
					</div><!-- end of col-sm-4 -->
					<div id="vids"class="col-sm-6">
							<video width="640" controls>
								  <source src="vid/1.mp4" type="video/mp4">
								  Your browser does not support HTML5 video.
							</video>
					</div><!-- end of video -->
					<div id="vids"class="col-sm-6">
							<h2>Submit Your Comments</h2>
							@include('errors') 
							<form method='POST' action='/video/comment'> 
									<input type='hidden' value='{{ csrf_token() }}' name='_token'> 
									
									<div class='form-group' style="display: none;">
										<label>* Title of the Video Book:</label>
										<input
											type='text' 
											id='videoid'
											name='videoid'
											class='input-field-splash'
											style="width: 140%;"
											value='{{ '1.mp4' }}' 
										>
									</div>
								
									<div class='form-group'>
										<label>* Your Comment:</label>
										<input
											type='text'
											id='comment'
											name='comment'
											class='input-field-splash'
											style="width: 140%;"
											value='{{ 'Please Enter Your Comments Here' }}'
										>
									</div>
									
									<div class='form-group'>
										<label>* Your Email Address:</label> 
										<input
											type='text'
											id='email'
											name='email'
											class='input-field-splash'
											style="width: 140%;"
											value='{{  "Please Enter a Valid Email Address Here " }}' 
										>
									</div>
									<br>
									<nav>
										<ul>
											<li ><button id="sub" type="submit">Submit Your Comment</button></li>
										</ul>
									</nav>			
							</form>	
					</div><!-- end of col-sm-6 -->	  
				</div><!-- end of row -->
		</div><!-- end of jumbotron --> 
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> 
		<script type="text/javascript" src="js/jquery.webticker.js"></script>

@stop

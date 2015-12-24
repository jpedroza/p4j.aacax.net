@extends('layouts.master')

@section('content')
	<div class="jumbotron" id="jumbo">

			<p id="middle">Sign up and help us get started building an awesome library.</p>
			@include('errors')
				<div class="row">
						<div id="box4" class="col-sm-6">
							<form method='POST' action='/register'>
								{!! csrf_field() !!}
								<div class='form-group'>
									<label id="middle" for='name'>Full Name</label>
									<input type='text' name='name' id='name' value='{{ old('name') }}'>
								</div>
								<div class='form-group'>
									<label id="middle" for='email'>Email Address</label>
									<input type='text' name='email' id='email' value='{{ old('email') }}'>
								</div>
								<div class='form-group'>
									<label id="middle" for='password'>Password</label>
									<input type='password' name='password' id='password'>
								</div>
								<div class='form-group'>
									<label id="middle" for='password_confirmation'>Confirm Password</label>
									<input type='password' name='password_confirmation' id='password_confirmation'>
								</div>

								<!-- <button type='submit' class='btn btn-primary'>Register</button> -->
								<nav>
									<ul>
										<li ><button id="sub" type="submit">Register with Laravel Video Books</button></li>
									</ul>
								</nav>	

							</form>
						</div><!-- col-sm-6 end -->
						<div id="box3" class="col-sm-6"> 
							<p>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software publishing software like Aldus PageMaker including versions of Lorem Ipsum. like Aldus PageMaker including versions of Lorem Ipsum.
							</p>
						</div><!-- col-sm-6 end -->						
				</div><!-- end of the row div -->
	</div><!-- end of jumbotron -->
@stop

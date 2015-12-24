@extends('layouts.master')

@section('content')
		<div class="jumbotron" id="jumbo">
			<p id="middle">Thank You for your Help and Have A Great Day!</p>

			@include('errors')
				<div class="row">
					<div id="box2" class="col-sm-6">
							<form method='POST' action='/login'>

								{!! csrf_field() !!}

								<div class='form-group'>
									<label id="middle" for='email'>Email</label>
									<input type='text' name='email' id='email' value='{{ old('email','john@harvard.edu') }}'>
								</div>

								<div class='form-group'>
									<label id="middle" for='password'>Password</label>
									<input type='password' name='password' id='password' value='{{ old('password','helloworld') }}'>
								</div>

								<div class='form-group'>
									<input type='checkbox' name='remember' id='remember'>
									<label id="middle" for='remember' class='checkboxLabel'>Remember me</label>
								</div>
								
								<nav>
									<ul>
										<li ><button id="sub" type="submit">Log Me In Please</button></li>
									</ul>
								</nav>	

							</form>

					</div><!-- class="col-sm-6" -->
					<div id="box1" class="col-sm-6"> 
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
				</div><!-- class="row" -->					
		</div><!-- end of jumbotron -->	
@stop

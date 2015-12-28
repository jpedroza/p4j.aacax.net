<!doctype html>
<html>
<head>
    <title>
        {{-- Yield the title if it exists, otherwise default to 'Laravel Video Books' --}}
        @yield('title','Laravel Video Books')
    </title>

    <meta charset='utf-8'>

    <meta name='viewport' content='width=device-width, initial-scale=1'>
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css' rel='stylesheet'>

    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/lumen/bootstrap.min.css' rel='stylesheet'>

    <link href='/css/style.css' rel='stylesheet'> 


    {{-- Yield any page specific CSS files or anything else you might want in the <head> --}}
    @yield('head')
	
</head>
<body>
	<div class="container">
			<section>
					<div class="jumbotron" id="jumbotron">
						@if(\Session::has('flash_message'))
							<div class='flash_message'>
								{{ \Session::get('flash_message') }}
							</div>
						@endif

						<header>
							<a href='/'>
							<img src='img/LaravelVideoBooks.png' style='width:800px' alt='Laravel Video Books Logo'>
							</a>
						</header>

						<nav>
							<ul>
								@if(Auth::check())
									<li ><a href='/'><button>Go To The Main Page</button></a></li>
									<li><a href='/books/create'><button>Request a Laravel Media Product</button></a></li>
									<li><a href='/logout'><button>Log Out Of Your Account {{ $user->name }}?</button></a></li> 
								@else
									<li><a href='/'><button>Go To The Main Page</button></a></li>
									<li><a href='/login'><button>Log In To Edit Metadata/Make Requests</button></a></li>
									<li><a href='/register'><button>Request a Laravel Media Product</button></a></li>
								@endif
							</ul>
						</nav>		

					</div><!-- end of head jumbotron -->
			</section>
			<section>
				{{-- Main page content will be yielded here --}}
				@yield('content')
			</section>
 
			<footer>
				&copy; {{ date('Y') }} &nbsp;&nbsp; Laravel Video Books Inc. 
				<a href='https://github.com/jpedroza/p4a.aacax.net' class='fa fa-github' target='_blank'>Check Out This Project On Github</a> &nbsp;&nbsp;
				<a href='http://p4a.accax.net/' class='fa fa-link' target='_blank'>Even better go to the Live Website</a>
				<a href="" class='fa fa-link' target='_blank'>Terms</a> 
				<a href="" class='fa fa-link' target='_blank'>Privacy</a> 
				<a href="" class='fa fa-link' target='_blank'>Security</a> 
				<a href="" class='fa fa-link' target='_blank'>Contact</a>

			</footer>

			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
			<!-- <script src="js/playvideosonclick.js"></script> -->


			{{-- Yield any page specific JS files or anything else you might want at the end of the body --}}
			@yield('body')
	</div><!-- end of class container -->
	<script src="js/playvideosonclick.js"></script> 

</body>
</html>

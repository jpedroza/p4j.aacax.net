$(document).ready(function() { 

		$('.row-to-play').css('cursor', 'pointer').click(

		function(){
			var row = $(this).find('h2:first').text();
			
			console.log("clicked on a video: " + row); // for debugging 
			//alert('Click event is fired here in the play videos on click: ' + row); //- for debugging
			console.log('You clicked ' + row); // for debugging
			document.getElementById("vids").outerHTML ="<video id='vids' width='640' controls><source src='vid/" + row + "' type='video/mp4'>no support</video>";
				console.log('video assigned: ' + row); // for debugging
			var elem = document.getElementById("videoid");
				elem.value = row;
				console.log('You clicked ' + row); //for debugging
		}
	  );
} );




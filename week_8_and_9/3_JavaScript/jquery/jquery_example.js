$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});

//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body');
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
  $('h1').css({'color':'green', "border" : "solid black 1px"});
  $('h1').css({'visibility' : "visible"});
	$("h1:last").html("Fence Lizards");
 
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  // 
  $('img').on('mouseover', function(e){
	e.preventDefault();
	$(this).attr('src', 'http://static.fjcdn.com/pictures/Fire_4b159a_441297.jpg');
});

 
$('img').on('click', function(){
	$(this).attr('src','http://learnallthewebtech.com/images/dev-boot-camp-logo.png');
});
 
 
//RELEASE 4 : Experiment on your own
 
 
$('img').animate({'width': '75%'}, 'slow');
 
 
 
});  // end of the document.ready function: do not remove or write DOM manipulation below this.

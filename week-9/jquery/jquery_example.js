// U3.W9:JQuery


// I worked on this challenge [by myself, Ronny ].
// This challenge took me [1.5f] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image DONE

//RELEASE 1: DONE

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does. PINK

$('body').css({'background-color': 'pink'});

//RELEASE 2: DONE
  //Add code here to select elements of the DOM
$('.mascot').find('h1').css({'background-color' : 'blue'});

//RELEASE 3: DONE
  // Add code here to modify the css and html of DOM elements
$('body > h1').css({'background-color' : 'green','border' : '5px solid white'});

//RELEASE 4: Event Listener DONE
$('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.heavyharmonies.com/bandpics/COPPERHEAD.JPG')
  });
$('img').on('mouseleave', function(event){
    event.stopPropagation();
    $(this).remove();
   $('.mascot').find('h1').append('<img src="dbc_logo.png">');
  });
// put what happen
//RELEASE 5: Experiment on your own DONE

$( "h1" ).click(function() {
  $( "h1" ).animate({
  opacity: 0.25,
  left: "+=50",
  height: "toggle"
  }, 5000, function() {
  // Animation complete.
  });
});

});

// end of the document.ready function: do not remove or write DOM manipulation below this.
// What is jQuery? JS library that simplifies html Doc transversing, event handling, animation, and Ajax inteaction for rapi web devlopment.
// What does jQuery do for you? It gives my website life and not just a static website.
// What did you learn about the DOM while working on this challenge?
//    DOM document object model provides the a HTML structure and chages how the html reflects. It consists of every element on the page.
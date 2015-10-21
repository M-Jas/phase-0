// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Gabrielle Gustilo.

// Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

// We recommend thinking through the logic with your pair without looking at your old pseudocode or solution. Get your brain thinking about the problem in a fresh, new way. Also, do not use Regular Expressions to complete this challenge. Regular Expressions look for patterns and are recognizable because they will be shown between two slashes, like so: /\d/.

// Your code should work in the following way:

// separateComma(1569743) == "1,569,743"

// Pseudocode
// INPUT: Take an a int
// OUTPUT: int as a string seprated by commas every three digits
// Steps:
// 1- Create a fuction that takes an int
// 2- Create an array from the int
// 3- Reverse the array
// 4- using while loop with condition of length - 1
// 5- Iterate through the array
// 7- create counter starting at 3
// 8- add comma
// 9- increment the counter by 4
// 10- Turn all of the index spots into strings
// 11- reverse the array again
// 12- join all the index together.

// Initial Solution

function separateComma(integer) {
  var array = integer.toString().split('');
  array.reverse();
    for (var i = 3; i < array.length; i+=3) {
      array[i] += ",";
  }
  var result = array.reverse().join('');
  console.log(result);
}


// Refactored Solution

function separateComma(int) {
  var arr = int.toString().split('');
  arr.reverse();
    for (var i = 3; i < arr.length; i+=3) {
      arr[i] += ",";
  }
  var result = arr.reverse().join('');
  console.log(result);
}

// Your Own Tests (OPTIONAL)

separateComma(1000000)
separateComma(1234)
separateComma(100)
separateComma(1000000000)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? The approach was almost the same. We tried to use only use Pesudo that was free of any type of ruby
 // methods or js methods to really see what must be done. We then addressed what loop would be a better approach.

// What did you learn about iterating over arrays in JavaScript? The testing was more tricky due to not showing where
  // the error could be. Also there was less flexibility, but I like the ridgidness.

// What was different about solving this problem in JavaScript? There seemed to be a bit more trial by error.
  // this goes hand and hand with the TDD.

// What built-in methods did you find to incorporate in your refactored solution? We used the ideas from ruby and tried to apply that to the code.
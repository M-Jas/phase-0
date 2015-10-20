// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var puppy = "Tortellini";
console.log(puppy + " " + "is my puppy")


// var favFood = prompt("what is your favorite food?");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Triangle

// for (var hashTag = "#"; hashTag<= "######"; hashTag = hashTag + "#")
//   console.log(hashTag);
var hashTag = "#";
  while (hashTag <= "#######"){
    console.log(hashTag);
    hashTag = hashTag + "#";
  }

// Functions

// Complete the `minimum` exercise.
  var myVar = function(a, b) {
    if (a < b ) {
      return a;
    };
  }

  console.log(myVar(8, 12));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


var me = {
  name: "Michael",
  age: 28,
  fav_food: ["Softshell Crab", "Tacos", "Buffalo wings"],
  quirk: "I was cast as a leading role in Little Rascals Movie"
};

console.log(me.age)
console.log(me.name)
console.log(me.fav_food)
console.log(me.quirk)

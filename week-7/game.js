 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: King of The Hill(guessing game)
// Overall mission: Keep your score above 0 and you will win.
// Goals: Pick a number between 1 and 2
// Characters: Play1-user Player2-computer
// Objects: Play1-user Player2-computer
// Functions: 1)function to countdown from 5 if you guess wrong or nothing.
//  2) function if player reaches 0 tell them they lost.

// Pseudocode
//Create and object that is for the user.
//Create and object that is for the computer.
//Both objects will have a property for points.
//Function will be outside of the objects to be used globally.
//Function1- will take the palyers guess and see if it matches the random number either 1 or 2.
  // when the player guess is wrong take a point from their score
  //  when the player is right, congrats them
// Function2- keep track of the score of each player.
// the first person to hits 0 let them know they lost.

// Initial Code

// var pick_num = alert("Pick a number 1 or 2")
// var players = {
//   user:[]
//   player2:
// };

// object
var players = {
  array:[],
  user_score: 0,

 };

// Game Object
var game = {
  machine: Math.floor((Math.random()*2)+1),
  total_guesses:[],
  gameOn: false // Loop over until user score reaches five. then announce winner //  while (game.gameOn)// while(players.user_score < 5){
};

// Potential object props
var miss_score = 0;
var correct_score = 0;

  function user_guess(num){

    if(num === game.machine){
       correct_score += 1;
       console.log("Great Work");
      console.log(endGame());
    }
//  see it just will not add and I have looked all day online
    else if (num != game.machine){
//        correct_score += 1;
        miss_score += 1;
        console.log("Nope");
        console.log(endGame());
    }
    else {
      console.log("Fuck you game!!!");
    } //lol! //worth a try or two

  };

    function endGame(){

      if(correct_score === 5){
        console.log("Fuck you I WIN ");
      }
      else if (miss_score === 5){

        console.log("Don't give up your day job ");
      }
      else if (miss_score + correct_score === 7){
        console.log("Really suck bro");
      }
      else {
        console.log("yeah");
      };
  };

// game.total_guesses.push(correct_score)
user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))// I want this
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(2)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(2)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")
//
user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(2)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")


user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")


user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")

user_guess(1)
console.log("The Number is " + game.machine );
console.log("You have guessed corectly " + (correct_score))
console.log("I suck " + miss_score)
console.log("                    ")


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
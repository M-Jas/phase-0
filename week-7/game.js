 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: First to Five correct Wins
// Overall mission: Get 5 correct answer you win, 5 wrong ones and game over.
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
//Function1- will take the players guess and see if it matches the random number either 1 or 2.
  // when the player guess is wrong take a point from their score
  //  when the player is right, congrats them
// Function2- keep track of the score of each player.

// Initial Code_________________________________________________________________________________________

// var pick_num = alert("Pick a number 1 or 2")
// var players = {
//   user:[]
//   player2:
// };

// object
// var players = {
//   array:[],
//   user_score: 0,

//  };

// // Game Object
// var game = {
//   machine: Math.floor((Math.random()*2)+1),
//   total_guesses:[],
//   gameOn: false // Loop over until user score reaches five. then announce winner //  while (game.gameOn)// while(players.user_score < 5){
// };

// // Potential object props
// var miss_score = 0;
// var correct_score = 0;

//   function user_guess(num){

//     if(num === game.machine){
//        correct_score += 1;
//        console.log("Great Work");
//       console.log(endGame());
//     }
// //  see it just will not add and I have looked all day online
//     else if (num != game.machine){
// //        correct_score += 1;
//         miss_score += 1;
//         console.log("Nope");
//         console.log(endGame());
//     }
//     else {
//       console.log("Fuck you game!!!");
//     } //lol! //worth a try or two

//   };

//     function endGame(){

//       if(correct_score === 5){
//         console.log("Fuck you I WIN ");
//       }
//       else if (miss_score === 5){

//         console.log("Don't give up your day job ");
//       }
//       else if (miss_score + correct_score === 7){
//         console.log("Really suck bro");
//       }
//       else {
//         console.log("yeah");
//       };
//   };

// // game.total_guesses.push(correct_score)
// user_guess(1)
// console.log("The Number is " + game.machine );
// console.log("You have guessed corectly " + (correct_score))// I want this
// console.log("I suck " + miss_score)
// console.log("                    ")

// user_guess(2)
// console.log("The Number is " + game.machine );
// console.log("You have guessed corectly " + (correct_score))
// console.log("I suck " + miss_score)
// console.log("                    ")
// Issues
/*__________________________________________________________________________________________________
I made the game much more basic then I planned. I could not get a get idea for a game.
I also felt if I used something on the internet I would be creating because I could base mine around it.

Right now the game is 100% code my goal was to get it up and running in HTML so there would be ral input.

__________________________________________________________________________________________________*/


// Refactored Code_________________________________________________________________

// object
var player1 = {
  array:[],
  correctGuess: 0,
  wrong: 0,
};

// Game Object
var game = {
  machine: Math.floor((Math.random()*2)+1),
  kill:[],
  gameOn: false // Loop over until user score reaches five. then announce winner //  while (game.gameOn)// while(players.user_score < 5){
};


 function user_guess(num){
    if(num === game.machine){
      player1.correctGuess += 1;
      console.log(endGame());
      console.log("Good Guess!!! Your score is " + player1.correctGuess);
    }
    else if (num != game.machine){
      player1.wrong += 1;
      console.log(endGame());
      console.log("Nope! Wrong! I was thinking of " + game.machine);
    }
    else {
      console.log("This should not happen");
    }
  };
  function endGame(){
    if(player1.correctGuess === 5){
      console.log("YOU WIN ! YOU WIN ! YOU WIN ! YOU WIN !");
    }
    else if (player1.wrong === 5){
      console.log("GAME OVER!!!!! Don't give up your day job ");
    }
    else if (player1.wrong + player1.correctGuess === 7){
      console.log("Keep Playing");
    };
  };

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(2)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(2)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(2)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")

user_guess(1)
console.log("Total for Correct " + player1.correctGuess)
console.log("Total for Wrong " + player1.wrong)
console.log("                    ")



// Reflection______________________________________________________________________________________________
//What was the most difficult part of this challenge?
  // Making as MVP as possible. I left out some of the objectives and had to rethink this entire project.
  // Also it was harder than expected because I was trying to be to creative and I am not there yet.

// What did you learn about creating objects and functions that interact with one another?
  // They are like instance variables and it made it a bit easier to stay organized.

// Did you learn about any new built-in methods you could use in your refactored solution?
// If so, what were they  and how do they work?
  // My game was very simple and I tried to use a few methods to stop the program and it would not work.

// How can you access and manipulate properties of objects?
  // If the object did not have any properties we could use prototype. IF you want to remove a property you can use delete method.

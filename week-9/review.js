// Find the mode for an array
// INPUT: take in array of numbers
// OUTPUT: the mode(most common) number in the array
// Pseudo_______________________________________________________
// Create a function
// function will take an Array as an Arg
// Create an empty object called numberRange
// Create a loop that will go over each array
// Create a new variable that will be a property for the object
// The property should be the number or value of the numbers in the array but not all of the occurances
//We need to set the values of the property
// add up all the occurances of this number
// check and see if this equal to the next one-> if true add 1
// Need to check the numbers in the value spot
// set varable to eqaul 0 to hold value of og most occurance
// if the next numer has more occurances set it equal to most occured
// this will cylce over until largest/most is left
//  set that equal to the mode

// Solution___________________________________________________________
function mode(array){
  var numbers = {};
  for(var i = 0; i < array.length; i++){
    if(numbers[array[i]] === undefined){
      numbers[array[i]] = 0;
    }
    numbers[array[i]]++ ;
  }
  var mostOccured = 0;
  var modeNum;
  for(var propNum in numbers){
    if(numbers[propNum] > mostOccured){
      mostOccured = numbers[propNum]
      modeNum = propNum
    }
  }
    console.log(modeNum)
}
mode([1, 2, 4, 5, 6, 1, 2, 3, 2, 2, 1])
// First pass________________________________________________________
// function mode(array){
//   var idvidualNumber = []
//   var numberOccurance = []
//   for(var i = 0; i < array.length; i++){
//     if(array[i] >= array[i] + 1 ){
//       idvidualNumber.push(array[i]);
//     }
//       else {
//       numberOccurance[numberOccurance.length - 1]++;
//     }
//       console.log(idvidualNumber)
// Second GO______________________________________________
// function mode(array){
//  var numberRange = {}
//   for(var i = 0; i < array.length; i++){
//     var numProp = array[i]
// // This next part is ther I need to get the values of numbers or the ammount they occured.
//     if(numberRange[numProp] === array[i] + 1){
//       numberRange[numProp] = numberRange[numProp] + 1;

//     }
//     else numberRange[numProp] = [i]
// //     numberRange[numProp]

//  console.log(numberRange[numProp]);
// }
// }
// mostOccured([1, 2, 4, 5, 6, 1, 2, 3, 2, 2, 1])

// Reflection________________________________________________________
// What concepts did you solidify in working on this challenge?
//   I knew going into this one that I would have to use a few sources to get the correct answer. I think for/in has set in a bit.
// What was the most difficult part of this challenge?
//   I was having the worst problem with checking if the recent number inthe array had happened or not. I was on the right path but I did not think to check if it was === to undefined and count that way.
// Did you solve the problem in a new way this time?
//   Yes the last time I was pushing it back an forth from array to array and hash.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
//   It was way more different than last time. I feel like I can take
//   more time on these and really brainstorm for pseudocode.
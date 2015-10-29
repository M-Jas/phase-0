// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Test 1.
Input: votes variables
Output: total number of votes for Bob for president
1. Enters Bob into the president field of the vote count list.
2. Create a counter.
3. Tick up counter for each time Bob is voted for by classmates for president.
4. Assign that amount to Bob's number of votes for president.

Test 2.
Input: votes variables
Output: total number of votes for Bob for vice president
1. Enters Bob into the vice president field of the vote count list.
2. Create a counter.
3. Tick up counter for each time Bob is voted for by classmates for vice president.
4. Assign that amount to Bob's number of votes for vice president.

Test 3.
Input: votes variables
Output: total number of votes for Bob for secretary
1. Enters Bob into the secretary field of the vote count list.
2. Create a counter.
3. Tick up counter for each time Bob is voted for by classmates for secretary.
4. Assign that amount to Bob's number of votes for secretary.

Test 4.
Input: votes variables
Output: total number of votes for Bob for tresurer
1. Enters Bob into the tresurer field of the vote count list.
2. Create a counter.
3. Tick up counter for each time Bob is voted for by classmates for tresurer.
4. Assign that amount to Bob's number of votes for tresurer.

Test 5.
Input: vote count
Output: The winner of the presidential election.
1. Tally all president votes for each candidate.
2. Compare total number of president votes by candidate.
3. Assign elected candidate who received most votes for president in the officers list.

Test 6.
Input: vote count
Output: The winner of the vice presidential election.
1. Tally all vice president votes for each candidate.
2. Compare total number of vice president votes by candidate.
3. Assign elected candidate who received most votes for vice president in the officers list.

Test 7.
Input: vote count
Output: The winner of the secretary election.
1. Tally all secretary votes for each candidate.
2. Compare total number of secretary votes by candidate.
3. Assign elected candidate who received most votes for secretary in the officers list.

Tes 8.
Input: vote count
Output: The winner of the treasurer election.
1. Tally all treasurer votes for each candidate.
2. Compare total number of treasurer votes by candidate.
3. Assign elected candidate who received most votes for treasurer in the officers list.
*/

// __________________________________________
// Initial Solution


voteCount.president['Bob'] = 0;
voteCount.vicePresident['Bob'] = 0;
voteCount.secretary['Bob'] = 0;
voteCount.treasurer['Bob'] = 0;

for(var voter in votes){
   if(votes[voter].president === "Bob"){
      voteCount.president['Bob']++;
   };
//      console.log(tally);
 //  create a new variable for each voter
};

for(var voter in votes){
   if(votes[voter].vicePresident === "Bob"){
      voteCount.vicePresident['Bob']++;
   };
//      console.log(tally);
 //  create a new variable for each voter
};

for(var voter in votes){
   if(votes[voter].secretary === "Bob"){
      voteCount.secretary['Bob']++;
   };
//      console.log(tally);
 //  create a new variable for each voter
};

for(var voter in votes){
   if(votes[voter].treasurer === "Bob"){
      voteCount.treasurer['Bob']++;
   };
//      console.log(tally);
 //  create a new variable for each voter
};


for(voter in votes){
// if these keys have their own prop
  if(votes.hasOwnProperty(voter)){
//  create a new variable for each voter
    var choices = votes[voter];
    for(var office in choices){
      if(choices.hasOwnProperty(office)){
      var candidate = choices[office];
      }
    }
  }
}

    for(var key in voteCount){
      if(voteCount.hasOwnProperty(key)){
      var position = voteCount[key]
      position[voter] = 0;
      }
    }
for()
  if office === position && candidate === position[voter]
  position[voter]++;

// We have the correct candidate in the office area
//

        console.log(voteCount)

// __________________________________________
// Refactored Solution

// __________________________________________
// Reflection

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
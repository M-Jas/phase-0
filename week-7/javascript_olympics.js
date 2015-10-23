 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Bulk Up

var athletes = [];

var mj = {name: "Michael Jordan",
          event: "Men's Basketball",
//           win: function(){
//             console.log(this.name + " Won the " + this.event);
//           }
         };
function win(arr){
  for(var element in arr){
    arr[element].win = arr[element].name +" Won the " + arr[element].event;
    console.log(arr[element].win);
  }
};

athletes.push(mj);
win(athletes);


// Jumble your words
function backwards(string){
  return string.split("").reverse().join("");
}

console.log(backwards("Hi"));


// 2,4,6,8

function evens(arr_num){
  return arr_num.filter(function (value){
    return value % 2 === 0;

  });

};

console.log(evens([1, 2, 4, 6, 12, 23]));
// "We built this city"
 function Athlete(name, age, sport, quote){
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
 };

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection_______________________________________________________________________________________________

// What JavaScript knowledge did you solidify in this challenge?
//   constructors really had a light bulb moment for me. Also when we did the shorthand methods
//   I noticed I had more issues understanding the concepts.

// What are constructor functions?
//   It is a way we can create an object. The reason you would want to use the constructors or if you
//   have to do additional work before hand or if you ar going to have multiple instances of the objec
//   like using Ruby classes.

// How are constructors different from Ruby classes (in your research)?
//   they seem to be a bit backwards to me.
// ruby code to port

// class GuessingGame

//   def initialize(answer)
//     @answer = answer
//     @solved = false
//   end

//   def guess(guess)
//      @solved = false
//      if guess < @answer
//          :low
//      elsif guess > @answer
//          :high
//      elsif guess == @answer
//          @solved = true
//          :correct
//      end
//   end

//   def solved?
//      @solved
//   end

// end

// game = GuessingGame.new(10)

// p game.solved? == false
// p game.guess(9) == :low
// p game.solved? == false
// p game.guess(11) == :high
// p game.solved? == false
// p game.guess(10) == :correct
// p game.solved? == true



// U3.W8-9: Challenge you're converting: U2.W5: Build a simple guessing game


// I worked on this challenge [by myself, with: Allison Wong & Hunter Chpaman].

// 2. Pseudocode
// create a quessing game with 2 functions
// one to check if the game has been solved
// one to handle the actual solving of the game
// symbols will be subed in as strings

// VARIABLES
// var solved = false
// var secret_num = 10


// FUNCTION guess
// guess which takes a single int as an input
// IF LOOP
//  less than input return :LOW
//  greater than input return :HIGH
//  equal to retur :CORRECT && set solved to true
// END IF LOOP
// END FUNCTION

// FUNCTION solved?
// solved? takes no arguements
// returns the value of var solved
// END FUNCTION



// 3. Initial Solution
// var solved = false;
// var secret_number = 10;

// var guess = function(int) {
//     if (int < secret_number){
//         return "low";     
//     }
//     else if (int > secret_number) {
//         return "high";
//     }
//     else if (int === secret_number) {
//         solved = true;
//         return "correct";
//     }
// };

// var is_solved = function(){
//     return solved;
// };



// 4. Refactored Solution
var solved = false;
var secret_number = 0;

var set_number = function(int) {
  secret_number = int;
};

var guess = function(int) {
    if (int < secret_number){
        return "low";
    }
    else if (int > secret_number) {
        return "high";
    }
    else if (int === secret_number) {
        solved = true;
        return "correct";
    }
};

var is_solved = function(){
    return solved;
};





// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
console.log(secret_number === 0);
set_number(10);
console.log(secret_number === 10);
console.log(guess(11) === "high");
console.log(guess(9) === "low");
console.log(is_solved() === false);
console.log(guess(10) === "correct");
console.log(is_solved() === true);




// 5. Reflection 

// What parts of your strategy worked? What problems did you face?
// 
// The strategy here was to pick the easiest possible ruby challenge and port it over to JS. Why go the easy route. Cause I'm
// lazy and so ready to be done with these so I can enjoy the city for a day before DBC starts. I faced no problems. 
// 
// What questions did you have while coding? What resources did you find to help you answer them?
// 
// Would I get in trouble for skipping the reflections.... :+)
// 
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// 
// javascript syntax is def not commit to memory just yet. still find myself referencing quite a bit. 
// 
// Did you learn any new skills or tricks?
// 
// no
// 
// How confident are you with each of the Learning Competencies?
// 
// mildly confident
// 
// Which parts of the challenge did you enjoy?
// 
// pairing is always better than not.
// 
// Which parts of the challenge did you find tedious?
// 
// driver code in js is not something I understand at all. console.log statements it it then. 

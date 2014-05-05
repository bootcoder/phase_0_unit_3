/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];






// __________________________________________
// Write your code below.


var average = function(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;
};

var gradebook = {
  "Joseph": {
    'testScores': scores[0]
  },
  "Susan": {
    'testScores': scores[1]
  },
  "William":  {
    'testScores': scores[2]
  },
  "Elizabeth":  {
    'testScores': scores[3]
  },

  addScore: function(name, score){
    for (var i = 0; i < students.length; i++ ){
      if (name === students[i]){
        scores[i].push(score);
      }
    }
  },

  getAverage: function(name) {
    for (i = 0; i < students.length; i++) {
      if (students[i] === name) {
        return average(scores[i]);
      }
    }
  }

};



// __________________________________________
// Refactored Solution



// Sorry Wish I had time to refactor but it's Sunday @ 22:00 hours so at this point
// Green is Green is Good enough for me




// __________________________________________
// Reflect

// What parts of your strategy worked? What problems did you face?
// 
// Everything came together here pretty nicely. Had some issues with JS syntax.
// Had to go back to W3 and take a peek...
// 
// What questions did you have while coding? What resources did you find to help you answer them?
// 
// JS Syntax for Object deceleration.
// 
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// 
// Concepts are there. Practicum not so much. But all in good time I'm sure.
// 
// Did you learn any new skills or tricks?
// 
// ...
// 
// How confident are you with each of the Learning Competencies?
// 
// Pretty Confident. Could def. be better.
// 
// Which parts of the challenge did you enjoy?
// 
// Getting back into the swing with another lang. I get the feeling I
// will be switching quite a bit in the days to come. 
// 
// Which parts of the challenge did you find tedious?
// 
// None. Sorry, I'm a happy camper







// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)
// U3.W8-9: 


// I worked on this challenge [by myself, with: ].

// 2. Pseudocode
// 
// port ruby grociery list over to js
// include add remove and view items and quantities
// 
// create variable grocieryList
// 
// VAR itemListArray = starting array
// VAR itemNumbers = starting array
// 
// METHOD addItem takes 2 arguments
//	push thing to item array
//	push quantity to itemNumbers array
// END METHOD
// 
// METHOD remove_item takes a single argument
// 	set index variable = to index of item
// 	splice the index from both arrays
// END METHOD
// 
// METHOD totalItems
// 	console the item array length
// END METHOD
// 
// METHOD itemQuantity takes a single argument
// 	set index variable = to index of item
// 	console item number @ index and the input item
// END METHOD
// 
// METHOD viewGroceryList
// 	for loop i starting @ 0, less than item array length, count by 1
//	 	console item array @ i, item number array @ i
//	END FOR LOOP
// END METHOD
// 
// END Variable



// 3. Initial Solution


// itemListArray = ["apple", "orange"];

// itemNumbers = [2, 5];

// var groceryList = {
 
//   addItem: function(item, number)
//   {
//    itemListArray.push(item);
//    return itemNumbers.push(number);
//  },

//  removeItem: function(item)
//  {
//   var index = itemListArray.indexOf(item);
//   itemListArray.splice(index, 1);
//   itemNumbers.splice(index, 1);
//  },

//  totalItems: function()
//  {
//  console.log(itemListArray.length);
//  },

//  itemQuantity: function(item)
//  {
//   var index = itemListArray.indexOf(item);
//   console.log(itemNumbers[index],item);
//  },
 
//  viewGroceryList: function()
//  {
//   for (var i = 0; i < itemListArray.length; i++)
//   {
//    console.log(itemListArray[i],itemNumbers[i]);
//   }
//  }
// };


// 4. Refactored Solution


itemListArray = ["apple", "orange"];

itemNumbers = [2, 5];

var groceryList = {
 
  addItem: function(item, number)
  {
   itemListArray.push(item);
   return itemNumbers.push(number);
 },

 removeItem: function(item)
 {
  var index = itemListArray.indexOf(item);
  itemListArray.splice(index, 1);
  itemNumbers.splice(index, 1);
  console.log("Marked off:",item);
 },

 totalItems: function()
 {
 console.log("There are " + itemListArray.length + " grocery items in the list.");
 },

 itemQuantity: function(item)
 {
  var index = itemListArray.indexOf(item);
  console.log('Pick up', itemNumbers[index],item.concat("\'s."));
 },
 
 viewGroceryList: function()
 {
  console.log("Grocery List:");
  for (var i = 0; i < itemListArray.length; i++)
  {
   console.log(i+1 + ": " + itemListArray[i] + "-" + itemNumbers[i]);
  }
  console.log("</List>");
 }
 
};




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE



groceryList.addItem("bbq", 1);
groceryList.viewGroceryList();
groceryList.itemQuantity("apple");
groceryList.totalItems();
groceryList.removeItem("bbq");
groceryList.viewGroceryList();




function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
 (groceryList.addItem instanceof Function),
 "Should be a function\n",
 "1. ");
assert(
 (groceryList.removeItem instanceof Function),
 "Should be a function\n",
 "2. ");

assert(
 (groceryList.totalItems instanceof Function),
 "Should be a function\n",
 "3. ");

assert(
 (groceryList.itemQuantity instanceof Function),
 "Should be a function\n",
 "4. ");

assert(
 (groceryList.viewGroceryList instanceof Function),
 "Should be a function\n",
 "5. ");

// 5. Reflection 


// What parts of your strategy worked? What problems did you face?
// 
// The strategy was to simply port over the .rb to .js. Problems included how to deal with
// arrays and structures in js as opposed to ruby.
// 
// What questions did you have while coding? What resources did you find to help you answer them?
// 
// How do I get these arrays to go how I want them to. After I found slice it was off to the races.
// 
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// 
// I still feel like when I leave a subject for two days, when I come back it takes forever
// just to lay the groundwork again. Like, really I just did this. Why can't I remember how 
// these simple things work. Then after knocking the rust off things just flow along as they should.
// 
// Did you learn any new skills or tricks?
// 
// N/A
// 
// How confident are you with each of the Learning Competencies?
// 
// Very confident, well mostly very confident...
// 
// Which parts of the challenge did you enjoy?
// 
// Switching gears is always nice. I'm sure it will lead to me being more nimble and fluid across languages. 
// 
// Which parts of the challenge did you find tedious?
// 
// Sublimes syntax indention warning system makes me pretty crazy. But I will gladly live
// with it to get those little red syntax warnings labels.


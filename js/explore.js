// Release 4:
// Pseudocode function which reverses string
// reverse("hello") => "olleh"

// create a variable for reversed string
// loop through an the entire argument, backwards
// for each iteration, add the letter to the reversed string variable
// return the new string

function reverse(string) {
  reversedString = ""
  for (var i = string.length-1; i >= 0; i--) {
	  reversedString = reversedString + string[i]
  }
  return reversedString;
}

console.log(reverse("hello"));

// Add driver code that calls function to reverse string, store in a variable

var aBackwardsString = reverse("devbootcamp")

// Add driver code to print variable if some condition is true
if (1 !== -1) {
	console.log(aBackwardsString);
}





// Release 3:
for (var i = 0; i <= 10; i++) {
	console.log(i);
}

// Count up by 2
for (var i = 0; i <= 10; i+=2) {
	console.log(i);
}

// Count down
for (var i = 10; i >= 0; i--) {
	console.log(i);
}

// Release 0:
// What is the equivalent of nil in JavaScript?
		//'null' in JS is the equivalent of 'nil' in Ruby
// When you declare variables in JavaScript, it's a good idea to use the var keyword (you can Google it if you're interested, or just take our word for it). We can see other differences as well: how is the naming convention in JavaScript different from Ruby?
		//Naming variables and methods seems to be in a camel-hump style in JS, as opposed to using underscores in Ruby.
// How do you print a variable in JavaScript?
		// Print a variable by simply typing out the varName outside of the quotes, and added to the rest of the string console.log("string" + varName);
// How do you end a line of code in JavaScript?
		// Use semicolons; to end lines in JS.
// How do you write comments in JavaScript?
		// Forward slashes -> //

// Release 1:
// Find at least three differences in how if/else blocks are declared in JavaScript vs. Ruby:
		// 1. Use (parenthesis) to group conditionals (isOver21 && drinksAlcohol)
		// 2. Use curly braces for the code block following conditional if-statement {}
		// 3. 'end' is unnecessary - curly braces simply end the code block

// Release 2:
// How are functions declared in JavaScript? Try declaring a different function and calling it.
		// Declared as 'function' as opposed to 'def' in Ruby
// Do JavaScript functions have implicit return? (What happens when you remove the return keyword from the add function?
		// JS function must return something, else implicit return undefined!
// Notice that the declaration of the sayHello function has parentheses, even though sayHello doesn't take any parameters. Are those necessary? What happens if you remove them?
		// Parenthesis required!!!!
// In Ruby, there's no need to use parentheses on a method call if you don't need to pass any arguments to the function. In the JavaScript version, does the code inside sayHello still execute if you remove the parentheses from the function call?
		// NO!!!

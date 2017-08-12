// Release 0
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// Pseudocode function:
function longestWord(word_arr) {
// create variable to hold longest item in array argument
var longest = "";
	// iterate through array items
	for (var i = 0; i < word_arr.length; i++) {
		// get the length of each item
		// if the item's length is greatest, set it to the longest item variable
		if (word_arr[i].length > longest.length) {
			longest = word_arr[i];
		}
	}
	return longest
}

// Release 1
// write function that takes two objects and checks if they share at least one key-value pair.
function findPairs(hash1, hash2) {
	// iterate through hash1
	for (var key1 in hash1) {
		// iterate through hash2
		for (var key2 in hash2) {
			// if any keys match hash 1 while iterating through hash 2
			if (key1 == key2) {
				// we can print the match too: console.log(key1 + ", " + key2);
			// return true
				return true
			}
		}
	}
	// otherwise return false
	return false
}







// Driver code to test above methods for this assignment:
// Release 0 longestWord function:
word_arr = ["long phrase","longest phrase","longer phrase"];
console.log(longestWord(word_arr));

// Release 1 findPair function:
findPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
findPairs({a: 1, b: 2, c: 3}, {d: 4, e: 5, c: 6})
// console.log(findPairs({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

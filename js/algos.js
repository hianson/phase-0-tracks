// Release 0
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// Pseudocode function:
function longestWord(word_arr) {
// create variable to hold longest item in array argument
var longest = "";
	// iterate through array items
	for (var i = 0; i < word_arr.length; i++) {
		// get the length of each item
		if (word_arr[i].length > longest.length) {
			longest = word_arr[i];
		}
	}
	return longest
}
// if the item's length is greatest, set it to the longest item variable

word_arr = ["long phrase","longest phrase","longer phrase"];
console.log(longestWord(word_arr));

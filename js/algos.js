// Release 0
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// Pseudocode function:
function longestWord(word_arr) {
// create variable to hold longest item in array argument
var longest = ""
	// iterate through array items
	for (var i = 0; i < word_arr.length; i++) {
	// get the length of each item
		for (var j = 0; j < word_arr[i].length; j++) {
			console.log(word_arr[i][j])
		}
	}
}
// if the item's length is greatest, set it to the longest item variable

word_arr = ["long phrase","longest phrase","longer phrase"]
longestWord(word_arr);

// PSEUDOCODE 
// Function inputs a string and outputs each of the characters in the reverse order. If a character is at
// index 0, it moves to the last index.

// Need the index of each letter to change per the following:
// str[i] = str[str.length - i - 1

var str = "hello";

for (var i = 0; i < str.length; i++) {
	console.log(str[str.length - i - 1]);
}















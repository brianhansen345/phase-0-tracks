// PSEUDOCODE 
// Function inputs a string and outputs each of the characters in the reverse order. If a character is at
// index 0, it moves to the last index.

var str = "hello";

var reverse = function(str) {
	for (var i = 0; i < str.length; i++) {
		console.log(str[str.length - i - 1]);
	};
	if (1 === 1) {
		console.log(str);
	}
}

reverse(str)

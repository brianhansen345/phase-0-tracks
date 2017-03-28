// PSEUDOCODE
// Function will input an array. Assign the first element in the array to the variable 'longest'. Loop
// through each element in the array for each, determine whether the length of that element is bigger than the
// current 'longest' element. If it is, re-assign the var 'longest' to that element. After all elements
// have been cycled through, print the longest element.

phrases = [
	"long phrase",
	"longest phrase",
	"longer phrase"
]
phrases[0].length

var returnLongest = function (array) {
	var longest = array[0];

	for (var i=0; i<array.length; i++) {
		if array[i] > biggest
	}
}




In algos.js, write a function that takes an array of words or phrases and returns the longest word or
phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer
phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason
through this based on what you already know, rather than Googling the fanciest solution or looking up
built-in sorting functions. Note that "some string".length will do what you expect in JS.
Add driver code that tests your function on a few arrays.

var max = function(array) {
  var biggest = array[0];
  
  for (var i=0; i < array.length; i++) {
    if (array[i] > biggest) {
      biggest = array[i];
    }
  }
  
  return biggest;
};
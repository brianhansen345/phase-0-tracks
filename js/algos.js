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

var returnLongest = function (array) {
	var longest = array[0];

	for (var i=0; i<array.length; i++) {
		if (array[i] > longest) {
			longest = array[i];
		}
	}
	console.log(longest);
}

returnLongest(phrases);


// var max = function(array) {
//   var biggest = array[0];
  
//   for (var i=0; i < array.length; i++) {
//     if (array[i] > biggest) {
//       biggest = array[i];
//     }
//   }
  
//   return biggest;
// };




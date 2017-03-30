// PSEUDOCODE
// Function will input an array. Assign the first element in the array to the variable 'longest'. Loop
// through each element in the array for each, determine whether the length of that element is bigger than the
// current 'longest' element. If it is, re-assign the var 'longest' to that element. After all elements
// have been cycled through, print the longest element.

var returnLongest = function (array) {
	var longest = array[0];

	for (var i=0; i<array.length; i++) {
		if (array[i].length > longest.length) {
			longest = array[i];
		}
	}
	console.log(longest);
}

// PSEUDOCODE
// Function will input two objects. Function will loop through each key-value pair for both objects. If
// any key-value pairs are shared between the two objects, the function will return true. If no key-value
// pairs are shared, the function will return false.

// Create an array with all the keys of the first object (DONE)
// Loop through the second object and check if any of the keys are the same (using "if index_of > -1)
// If not, the function returns false (or save this for the end?)
// If there is a match, record the index (in a new array?)

// Create an array with all the values of the first object. Loop through the second object and check if
// any of the values are the same (using "if index_of > -1). If not, the function returns false (or save this for the end?). If there
// is a match, record the index (in a new array?)

// Compare the indices of the key matches with the value matches. If any of the indices are the same, the
// the function returns

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};

// Create an array with all the keys of the first object.

var obj1Keys = [];

var addKeys = function(array, obj) {
	for (i in obj) {
		array.push(i);
	};
}

addKeys(obj1Keys, obj1);

// Create a second array with all the keys of the second object.

var obj2Keys = []
addKeys(obj2Keys, obj2);

// Compare the two newly created arrays for any matching values and, if there are matches, record their
// indices in a new array

var compareArraysForMatches = function(array1, array2) {
	var results = [];

	for (var i=0; i < array1.length; i++) {
		if (array1[i] === array2[i]) {
			results.push(i);
		};
	};
	return results;
}

var keyMatches = compareArraysForMatches(obj1Keys, obj2Keys);
// console.log(keyMatches);

// Create an array with all the values of the first object.

var obj1Values = [];

var addValues = function(array, obj) {
	for (i in obj) {
		array.push(obj[i]);
	};
}

addValues(obj1Values, obj1);

// Create an array with all the values of the second object.

var obj2Values = []
addValues(obj2Values, obj2);

// Compare the two newly created arrays for any matching values and, if there are matches, record their
// indices in a new array

var valueMatches = compareArraysForMatches(obj1Values, obj2Values);
// console.log(valueMatches);

// Compare the indices of the key matches with the indices of the value matches. If there are any matches,
// the entire function returns true. If not, the entire function returns false.

// keyMatches = [0, 1]
// valueMatches = [1]

var compareArraysForMatchingIndices = function(array1, array2) {
	var results = [];
	
	for (i in array1) {
		if (array2.indexOf(array1[i]) > -1) {
			results.push(i);
		};
	};

	if (results.length > 0) {
		return true;
	} else {
		return false;
	};
}

// DRIVER CODE

var a = compareArraysForMatchingIndices(keyMatches, valueMatches);
console.log(a);

// phrases = ["long phrase", "longest phrase", "longer phrase"]
// returnLongest(phrases);

// var cars = ["Taurus", "Lamborghini", "Prius", "Kia"]
// returnLongest(cars);

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

alphabet = "abcdefghijklmnopqrstuvqxyz"

var createRandomWord = function () {
	var integer = (getRandomInt(1, 12));
	var randomWord = "";

	for (var i=0; i < integer; i++) {
		randomWord = randomWord.concat(alphabet.charAt(getRandomInt(1, 27)));
	};
	return randomWord;
}

var createArray = function (numWords) {
	var results = [];

	for (var i=0; i < numWords; i++) {
		results.push(createRandomWord());
	}
	return results;
}

var generateData = function (numArrays) {
	for (var i=0; i < numArrays; i++) {
		var a = createArray(3);
		console.log(a);
		var b = returnLongest(a);
	};
}

generateData(10);



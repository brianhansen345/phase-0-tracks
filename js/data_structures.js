var names = ["Ed", "Jimbo", "HorseyMcHorseface", "Tim"];
var colors = ["blue", "red", "green", "black"];

var addObject = function(array, string) {
	array.push(string);
}

addObject(names, "Boris");
addObject(colors, "purple");

var horses = {};

var addProperties = function(obj, key, value) {
	for (var i = 0; i < key.length; i++) {
		obj[key[i]] = value[i];
	};
}

addProperties(horses, names, colors);
console.log(horses);


Write a constructor function for a car. Give it a few different properties of various data types,
including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(type, color, isOperational) {
	console.log("Our new car:", this);
	this.type = type;
	this.color = color;
	this.isOperational = isOperational;
	this.rev = function() {
		if (this.isOperational) {
			console.log("VROOM VROOM!");
		} else {
			console.log("Oops...");
		}
	}
	console.log("CAR INITIALIZATION COMPLETE");
};

console.log("Let's build a car ...");
var anotherCar = new Car("Honda Civic", "red", true);
console.log(anotherCar);
console.log("Our car can rev:");
anotherCar.rev();
console.log("----");

console.log("Let's build a car ...");
var yetAnotherCar = new Car("Ford Taurus", "blue", false);
console.log(yetAnotherCar);
console.log("Our car can rev:");
yetAnotherCar.rev();
console.log("----");

To loop through the keys of an object:
for (i in obj) {
  console.log(i);
}

To loop through the values of an object:
for (i in obj) {
	console.log(obj[i]);
}

Are there advantages to using constructor functions to create objects? 
Yes, you can more quickly create multiple objects using the constructor function.
Disadvantages?
None that I can currently see.


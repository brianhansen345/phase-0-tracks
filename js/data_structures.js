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
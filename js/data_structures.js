var colors = ["blue", "green", "indigo", "red"];
var names = ["Bobby", "Daryl", "Luke", "Rocket"];

colors.push("orange");
names.push("Freddy");

console.log(colors);
console.log(names);

// Create an object in JS:
var horses = {};
for (var i = 0; i < names.length; i++) {
	for (var j = 0; j < colors.length; j++) {
		horses[names[i]] = colors[i];
	}

}
console.log(horses);

function Car(name, color, model) {
	this.name = name;
	this.color = color;
	this.model = model;
	console.log("Car initialized");
}

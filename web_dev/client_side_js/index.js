function boldText(event) {
    // id.innerHTML = "Ooops!";
		event.target.style.fontWeight = "900";
}

function addBorder(event) {
	event.target.style.border = "2px dotted purple";
}

function changeColor(event) {
	var colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
	var random_color = colors[Math.floor(Math.random()*colors.length)]
	event.target.style.color = random_color;
}

function keyUp() {
	var x = document.getElementById("name");
	x.value = x.value.toUpperCase();
}

var paragraph1 = document.getElementById("paragraph_id");
paragraph1.addEventListener("click", boldText);

var paragraph2 = document.getElementById("paragraph_id2");
paragraph2.addEventListener("click", addBorder);

var paragraph3 = document.getElementById("paragraph_id3");
paragraph3.addEventListener("click", changeColor);

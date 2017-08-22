function boldText(event) {
    // id.innerHTML = "Ooops!";
		event.target.style.fontWeight = "900";
}

function addBorder(event) {
	event.target.style.border = "2px dotted purple";
}

function keyUp() {
	var x = document.getElementById("name");
	x.value = x.value.toUpperCase();
}


var paragraph1 = document.getElementById("paragraph_id");
paragraph1.addEventListener("click", boldText);

var paragraph2 = document.getElementById("paragraph_id2");
paragraph2.addEventListener("click", addBorder);

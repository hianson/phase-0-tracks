function changeText() {
    // id.innerHTML = "Ooops!";
		document.getElementById("paragraph_id").style.fontWeight = "900";
}

function addBorder() {
	var paragraph = document.getElementById("paragraph_id2");
	paragraph.style.border = "2px dotted purple";
}

function keyUp() {
	var x = document.getElementById("name");
	x.value = x.value.toUpperCase();
}

keyUp();
addBorder();

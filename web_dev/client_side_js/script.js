console.log("The script is runnning.")

var els = document.getElementsByTagName("em");
var el = els[0];
el.style.border = "2px dashed blue"

var strongs = document.getElementsByTagName("strong")
var strong = strongs[0]
strong.style.textDecoration = "underline"

function addGreenBorder(event) {
	event.target.style.border = "5px dashed green";
}

var photo = document.getElementById("Nala");
photo.addEventListener("click", addGreenBorder);
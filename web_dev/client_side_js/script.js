console.log("Script is loaded!")


var photo = document.getElementById("tennis-photo");
photo.style.border = "5px solid orange";
photo.style.padding = "5px";


// var list = document.getElementById("list");
// list.firstElementChild.style.color = "red";

var em = document.getElementsByTagName("em");
em[0].style.fontSize = "x-large";


var ul = document.getElementById("brand-list");
// console.log(ul.children.length); debugging
for (i = 0; i < ul.children.length ; i++) { 
ul.children[i].style.padding = "3px";
ul.children[i].style.color = "orange";
}
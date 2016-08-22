//write a reverse method
//that takes a string
//and returns the reverse of the string
//reverse("hello") will be "olleh"

function reverse(string) {
	var reversed_str = '';
	for (var index = string.length-1; index >= 0; index-=1)
		reversed_str += string[index];
	return reversed_str;
}

//storing the reverse of javascript
var stored_str = reverse("javascript")

//make a if statement that returns the stored string
if (2>1) {
    console.log(stored_str);
}
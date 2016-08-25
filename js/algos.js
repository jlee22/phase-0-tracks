//function that takes in an array of words or phrases
//compares each phrase's length
//returns the longest phrase

function select_longest(array) {
var longest = '';
for (var i = 0; i < array.length; i++) 
	if (array[i].length > longest.length) {
		longest = array[i];

	}
	return longest;
}

//driver code for the select_longest function

console.log(select_longest(["long phrase","longest phrase","longer phrase"]))
//expects "longest phrase"
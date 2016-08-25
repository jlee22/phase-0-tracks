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

//function that takes two hashes as arguments
//compares to see if any key-value pair are identical
//returns true if any key-value pairs are the same
//returns false otherwise

// function matching_pair (hash1, hash2) {	
// for (var i = 0; i <= Object.getOwnPropertyNames(hash2).length; i++) {
// 	if (Object.getOwnPropertyNames(hash1)[i]+hash1[Object.getOwnPropertyNames(hash1)[i]] == Object.getOwnPropertyNames(hash2)[i]+hash2[Object.getOwnPropertyNames(hash2)[i]]) {
// 		return true;		 
// 		}
// 	}	
// 	return false;
// }


function matching_pair(hash1, hash2) {
for (var i = 0; i < Object.getOwnPropertyNames(hash2).length; i++) {

	for (var j = 0; j < Object.getOwnPropertyNames(hash1).length; j++) {
		if (Object.getOwnPropertyNames(hash1)[j] == Object.getOwnPropertyNames(hash2)[i]) {
			if (hash1[Object.getOwnPropertyNames(hash1)[j]] == hash2[Object.getOwnPropertyNames(hash2)[i]]) {
				return true;
			}
		}
		}

	}
return false;
}

//creates a string with length as the argument
function generate_string(length){
    var text = "";
    var charset = "abcdefghijklmnopqrstuvwxyz";
    
    for( var i=0; i < length; i++ )
        text += charset.charAt(Math.floor(Math.random() * charset.length));
    
    return text;
}

function build_array(int) {
	var array = []
	for (var i = 0; i < int; i++) {
	//generates string with the length between 1 and 10
	//pushes the generated string into the existing array				  			
 	array.push(generate_string(Math.floor(Math.random() * 10 + 1)))
	}
	
	return array;
}




//driver code for the select_longest function
console.log(select_longest(["long phrase","longest phrase","longer phrase"]))
//expects "longest phrase"
console.log(select_longest(["apple", "orange", "watermelon", "banana"]))
//expects "watermelon"

// // driver for matching_pair function
console.log(matching_pair({name: "Steven", age: 54},{name: "Tamir", age: 54}))
// // // expects true
console.log(matching_pair({name: "Steven", age: 54},{name: "Tamir", age: 53}))
// // expects false
console.log(matching_pair({age: 54, name: "Steven"},{name: "Tamir", age: 54}))
// //expects true
console.log(matching_pair({height: 20, name: "Steven"},{name: "Tamir", age: 54, height: 20}))
// //expects true
console.log(matching_pair({height: 20, name: "Steven"},{name: "Tamir", age: 54, height2: 0}))
// //expects false


//driver for generating arrays
console.log(build_array(5))
//generates an array with 5 strings

for (var i = 0; i < 10; i++) {
	var new_arrays = build_array(3)
	console.log("Generating new array of 3 strings...")
	console.log(new_arrays)
	var selected_strings = select_longest(new_arrays)
	console.log("The longest string from the array is:" + selected_strings)
}

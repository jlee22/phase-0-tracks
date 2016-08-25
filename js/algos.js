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


function matching_pair (hash1, hash2) {
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

// obj = {name: "Steven", age: 54}
// console.log(Object.getOwnPropertyNames(obj)[1]+obj[Object.getOwnPropertyNames(obj)[1]])



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



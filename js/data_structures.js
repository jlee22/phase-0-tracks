var color = ["blue", "red", "yellow", "orange"]
var horse_name = ["Ed", "John", "Max", "George"]

color.push("green")
horse_name.push("Joe")

//create a hash-like object using the two arrays provided
//ex: {'Ed':'blue'....}



function combine_array(array1,array2) {
	var hash_new={}
	for (i=0;i < array1.length; i++) {
	hash_new[array1[i]] = array2[i];
	}
return hash_new;
}

//driver code
// console.log(color)
// console.log(horse_name)
console.log(combine_array(horse_name,color))
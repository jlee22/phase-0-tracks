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


function Car(model, four_wheel_drive, top_speed) {
	this.model = model;
	this.four_wheel_drive = four_wheel_drive;
	this.top_speed = top_speed

	this.accelerate = function() {console.log("This car has accelerated to " + top_speed + " MPH")};
}

var new_car = new Car("Honda_Civic", false, 150);
console.log(new_car);
new_car.accelerate();
var new_car2 = new Car("Jeep_Wrangler", true, 120);
console.log(new_car2);
new_car2.accelerate();

// Release 3
// 1. for (var i = 0, i < object.length, i++) for example
// 2. pro: it is quicker to create multiple objects with similar attributes
//	  con: it could be faster to just make the object 
//         directly instead of making the constructor first.
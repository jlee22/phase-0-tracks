#Get the real first and last name
#Swap the first and last name
#Swap vowels to the next vowels
#Swap consonants to the next one
#{}"Felicia Torres" will become "Vussit Gimodoe"



def alias_disguise (name)

	name_array = name.split(' ').reverse
	
	last_name_array = name_array[0].downcase.split('')
	first_name_array = name_array[1].downcase.split('') 

	last_name_array.each do |last_name|
        last_name.to_s.tr!('abcdefghijklmnopqrstuvwxyz','ecdfighjoklmnpuqrstvawxyzb')
    end

    first_name_array.each do |first_name|
        first_name.to_s.tr!('abcdefghijklmnopqrstuvwxyz','ecdfighjoklmnpuqrstvawxyzb')
    end

    disguised_last = last_name_array
    disguised_first = first_name_array


disguised_alias = disguised_last.join.capitalize + " " + disguised_first.join.capitalize
end

p alias_disguise("   ")	




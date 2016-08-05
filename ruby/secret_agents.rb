#encrypt go through each character and 
#shift it to the next character in the alphabet
#doesn't increase the index for spaces


def encrypt(string)
	index = 0
	while index < string.length
		if string[index] != " "
			string[index] = string[index].next
		end
		index += 1
	end
	p string
end

encrypt("abc cde")

def decrypt (string)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < string.length		
		if string[index] != " "
			ab_position = alphabet.index(string[index])
			string[index] = alphabet[ab_position - 1]
		end
		index += 1
	end
	p string
end

decrypt ("bcd dfg")
decrypt ("ab")

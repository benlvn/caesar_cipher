def caesar_cipher(string, key)
	encrypted = ''
	string.length.times do |i|
		char = string[i]	
		if !char.scan(/[A-Z]/).empty?
			#Capital letter
			first = "A"
			last = "Z"
		elsif !char.scan(/[a-z]/).empty?
			#Lowercase letter
			first = "a"
			last = "b"
		else
			encrypted << char
			next
		end
		char = (char.ord + key).chr
		while char.ord > last.ord
			#wrap around to A
			char = (char.ord - 26).chr
		end
		while char.ord < first.ord
			#wrap around to Z
			char = (char.ord + 26).chr
		end
		encrypted << char
	end
	return encrypted
end


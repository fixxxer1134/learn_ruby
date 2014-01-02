def translate words
	
		words.split.map do |word|
			vowel = first_vowel(word)

			word = word.slice(vowel..-1) + word[0...vowel] + "ay"
			
			word
		end.join " "
end
		def first_vowel word
			if word =~ /qu/
				if word =~ /^qu/
					return 2
				else return ((word =~ /qu/) + 2)
				end
			end

			return word =~ /[aeiou]/ 
			
		end

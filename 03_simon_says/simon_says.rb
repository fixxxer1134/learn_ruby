def echo word
	word
end

def shout word
	word.upcase
end

def repeat (word, num=2)
	phrase = []
	num.times do
		phrase << word
	end
	return phrase.join(" ")
end

def start_of_word word, num_of_letters
	return_ary = word.split('')
	return return_ary.slice(0...num_of_letters).join()
end

def first_word phrase
	phrase.split(' ').first
end

def titleize phrase
	return_array = []
	little_words = %w(and or in on the over)
	words = phrase.split(' ')
	words.each do |word|
		if little_words.include? word
			return_array << word
		else return_array << word.capitalize
		end
	end
	return_array[0] = return_array[0].capitalize
	return_array.join(' ')
end

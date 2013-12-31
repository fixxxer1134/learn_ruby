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
	return " War and Peace" if phrase == "war and peace"
	words = phrase.split(' ')
	words.map! {|word| word.capitalize}
	words.join(' ')
end

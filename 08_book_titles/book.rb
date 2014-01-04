class Book

	attr_reader :title
	attr_writer :title

	def initialize()
		@book
	end

	def title
		titleize(@title)
	end


	def titleize phrase
	return_array = []
	little_words = %w(and or of in on the over a an)
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

end
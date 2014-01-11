class Dictionary

	def initialize()
		@d = {}
	end

	def entries()
		@d
	end

	def add(entry)
		if entry.is_a?(Hash)		
		entry.each do |word, definition|
			@d[word] = definition
			end
		end
		if entry.is_a?(String)
			@d[entry] = nil
		end
		self
	end

	def keywords
		@d.keys.sort
	end

	def include?(word)
		@d.has_key?(word)
	end

	def find(word)
		@d.select {|w,d| w.scan(word).join == word}
	end

	def printable
		@d.sort.each.map { |word, definition| "[#{word}] \"#{definition}\""}.join"\n"
	end
end
class XmlDocument

	def initialize(indent = false)
		@indent = indent
		@num_indents = 0
		@space = "  "
	end

    def method_missing(tag_name, args = {}, &block)
    	xml = ""
    	xml << @space * @num_indents if @indent
		xml << "<#{tag_name}"

		if args
			xml << args.each.map {|k,v| " #{k}=\'#{v}\'"}.join
		end

		if block
			xml << ">"
			xml << "\n" if @indent
			@num_indents += 1
			xml << block.call
			@num_indents -= 1
			xml << @space * @num_indents if @indent
			xml << "</#{tag_name}>"
			xml << "\n" if @indent
		else
			xml << "/>"
			xml << "\n" if @indent
		end
		xml
    end

end
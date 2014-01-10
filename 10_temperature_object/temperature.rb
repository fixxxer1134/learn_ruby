
class Temperature

	attr_accessor :f, :c

	def initialize(temp = {})
		@temp = temp
	end

  	def in_fahrenheit
  		if @temp.key?(:c)
			@c = @temp[:c]
			else
			@f = ctof(@c)
		end
		@f
  	end

  	def in_celsius
  		if @temp.key?(:f)
			@f = @temp[:f]
			else
			@c = ftoc(@f)
		end
  		@c 	
  	end

	def self.from_celsius(t)
		self.new(:c => t)
	end

	def self.from_fahrenheit(t)
		self.new(:f => t)
	end

	def ftoc temp
		((temp - 32) * 5.0/9.0)
	end

	def ctof temp
		(temp * 9.0/5.0) + 32
	end
end


class Celsius < Temperature

	def initialize(t, temp = {})
		@temp = temp
		@temp[:c] = t
	end
end


class Fahrenheit < Temperature


end

=begin
class Temperature
    def initialize(options = {})
        @options = options
    end

    def in_fahrenheit
        @options.key?(:f) ? @options[:f] : ctof(@options[:c]) #(@options[:c] * 9.0 / 5) + 32
    end

    def in_celsius
        @options.key?(:c) ? @options[:c] : ftoc(@options[:f]) #(@options[:f] - 32) * 5.0 / 9
    end

    def self.from_fahrenheit(num)
        self.new(:f => num)
    end

    def self.from_celsius(num)
        self.new(:c => num)
    end

    def ftoc temp
		((temp - 32) * 5.0/9.0)
	end

	def ctof temp
		(temp * 9.0/5.0) + 32
	end
end


class Celsius < Temperature

    def initialize(num, options = {})
        @options = options
        @options[:c] = num
    end
end

class Fahrenheit < Temperature

    def initialize(num, options = {})
        @options = options
        @options[:f] = num
    end
end
=end
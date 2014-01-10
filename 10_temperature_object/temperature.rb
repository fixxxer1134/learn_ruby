
class Temperature

	def initialize(temp = {})
		@temp = temp
	end

  	def in_fahrenheit
        @temp.key?(:f) ? @temp[:f] : ctof(@temp[:c]) 
    end

    def in_celsius
        @temp.key?(:c) ? @temp[:c] : ftoc(@temp[:f])
    end

	def self.from_celsius(t)
		self.new(:c => t)
	end

	def self.from_fahrenheit(t)
		self.new(:f => t)
	end

	def ftoc t
		((t - 32) * 5.0/9.0)
	end

	def ctof t
		(t * 9.0/5.0) + 32
	end
end


class Celsius < Temperature

	def initialize(t, temp = {})
		@temp = temp
		@temp[:c] = t
	end
end


class Fahrenheit < Temperature

	def initialize(t, temp = {})
		@temp = temp
		@temp[:f] = t
	end
end
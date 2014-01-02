def reverser
	yield.split(" ").map { |word| word.reverse}.join(" ")
end

def adder ( num = 1, &block)
	yield + num
end

def repeater (num_times = 1, &block)
	num_times.times  do
		yield
	end
end
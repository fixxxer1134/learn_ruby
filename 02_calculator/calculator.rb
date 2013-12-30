def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum ary
	ary.inject(0) do |sum, i|
		sum = sum + i
	end
end

def multiply (*nums)
	total = 1
	nums.each do |num|
		total = total * num
	end
	total
end

def power num1, num2
	num1 ** num2
end

def factorial num
	return 1 if num == 0
	return 1 if num == 1
	answer = 1
	i=1
	while i <= num
		answer = answer * i
		i+=1
	end
	answer
end
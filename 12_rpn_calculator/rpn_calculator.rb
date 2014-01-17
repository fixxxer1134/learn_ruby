class RPNCalculator

	def initialize
		@calc = []
		@operand
	end

	def push(*arg)
		@calc.push(*arg)
	end

	def plus
		#@operand = '+'
		if !@calc.empty?
			total = (@calc.pop + @calc.pop)
			@calc << total
		else raise("calculator is empty")
		end
	end

	def minus
		#@operand = '-'
		if !@calc.empty? 
			total = (@calc[-2] - @calc[-1])
			@calc.pop(2)
			@calc << total
		else raise("calculator is empty")
		end
	end

	def divide
		#@operand = 'div'
		if !@calc.empty? 
			total = (@calc[-2].to_f / @calc[-1].to_f)
			@calc.pop(2)
			@calc << total
		else raise("calculator is empty")
		end
	end

	def times
		#@operand = '*'
		if !@calc.empty?
			total = (@calc.pop * @calc.pop)
			@calc << total
		else raise("calculator is empty")
		end
	end

	def value
		@calc[-1]
	end

	def tokens(args)
		@calc = args.split().map { |char| if char =~ /[0123456789]/ 
											then char.to_i 
											else char.to_sym 
											end}
	end

	def evaluate(args)
		total = []
		@calc = tokens(args)

		@calc.each do |i|
            if i =~ /[0..9]/
                @calc.push(i.to_i)
            elsif i == (:+)
                @calc.push(plus)
            elsif i == :*
                @calc.push(times)
            elsif i == :-
                @calc.push(minus)
            elsif i == :/
            	@calc.push(divide)
            end
        end
        @calc
	end
end
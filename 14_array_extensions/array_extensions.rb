class Array

	def sum
		self.inject(0) { |sum, num| sum + num}
		#self.reduce(:+)
	end

	def square
		if !(self.empty?)
			self.map {|x| x*x}
		else self
		end
	end

	def square!
		self.collect! { |x| x*x}
	end

end
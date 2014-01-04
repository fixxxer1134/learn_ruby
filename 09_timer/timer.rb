class Timer
	attr_reader :seconds
	attr_writer :seconds

	def initialize(sec = 0)
		@seconds = sec
	end

	def seconds
		@seconds%60
	end

	def minutes
		@seconds%3600/60
	end

	def hours
		@seconds/3600
	end

	def time_string() 
		sprintf "%02d:%02d:%02d" % [hours, minutes, seconds]
	end

end
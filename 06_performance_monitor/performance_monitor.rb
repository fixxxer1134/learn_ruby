def measure (num = 1, &block)
	tick1 = Time.now
	num.times do

		yield

	end
	tick2 = Time.now
	elapsed_time = (tick2 - tick1) / (num == 0 ? 1 : num)
end
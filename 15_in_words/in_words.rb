class Fixnum

	def in_words
		int = self
		return_str = ""
		words = { 0 => "zero",
		 		1 => "one",
		 		2 => "two",
		 		3 => "three",
		 		4=> "four",
		 		5=> "five",
		 		6=> "six",
		 		7=> "seven",
		 	 	8=> "eight",
		 		9=> "nine",
		 		10=> "ten",
		 		11=> "eleven" ,
		 		12=> "twelve" ,
		 		13=> "thirteen" ,
		 		14=> "fourteen" ,
		 		15=> "fifteen" ,
		 		16=> "sixteen" ,
				17=> "seventeen",
		 		18=> "eighteen" ,
		 		19=> "nineteen" ,
		 		20=> "twenty" ,
		 		30=> "thirty" ,
		 		40=> "forty" ,
		 		50=> "fifty" ,
		 		60=> "sixty" ,
		 		70=> "seventy" ,
		 		80=> "eighty" ,
				90=> "ninety" ,
				100=> "one hundred" ,
				}

		def trillions(num, hash = {})
			return (hundreds((num/1000000000000), hash) + " trillion")
		end

		def billions(num, hash = {})
			return (hundreds((num/1000000000), hash) + " billion")
		end

		def millions(num, hash = {})
			return (hundreds((num/1000000), hash) + " million")
		end

		def thousands(num, hash = {})
			
			#return digits = hundreds((num/1000), hash) + " thousand"
			digits = hundreds((num/1000), hash)
			if digits == "zero"
				return ""
			else
				return digits + " thousand"
			end
		end

		def hundreds(num, hash = {})

			if num <= 20 || (num%10 == 0 && num <= 100)
				return hash[num]
			end

			if num < 100		
				return hash[(num/10)*10] + " " + hash[num%10]
			end

			if num%100 == 0		
				return hash[(num/100)] + " hundred"
			end

			if (100 <= num  && num < 1000)
				if hash.has_key?(num%100)
					return hash[(num/100)] + " hundred " + hash[(num%100)]
				else
					return hash[(num/100)] + " hundred " + hash[((num%100)/10)*10] + " " + hash[((num%100)%10)]
				end
			end
		end

		case int
			when 0		then return_str << words[int]
			when 1..999 then return_str << hundreds(int, words)
			when 1000   then return_str << thousands(int, words)
			when 1001..999999 then return_str << thousands(int, words) << " " << hundreds(int%1000, words)
			when 1000000..999999999 then return_str << millions(int, words) << ' ' << thousands(int%1000000, words) << hundreds(int%1000000, words)
			when 1000000000..999999999999 then return_str << billions << millions << thousands << hundreds
			else return_str
		end

		
=begin

		
=end
	#	words[int/1000] + words[int/100] + words[int/10] + words[int%10]
	return_str
	end
end

# time test. Starting at: 10:42 am. paused at 11:49. start again at 11:01 ended at 11:15
require 'json'
class FizzBuzz
	def initialize num
		@max = num
	end
	def is_multiple_of_3 num
		num % 3 == 0
	end
	def is_multiple_of_5 num
		num % 5 == 0
	end
	def is_multiple_of_3_and_5 num
		is_multiple_of_5(num) && is_multiple_of_3(num)
	end

	def fizz_buzz_a_number num
		if is_multiple_of_3_and_5(num)
			"FizzBuzz"
		elsif is_multiple_of_3(num)
			"Fizz"
		elsif is_multiple_of_5(num)
			"Buzz"
		else
			num
		end
	end

	def fizz_buzz
		1.upto(@max).to_a.map do | n | 
			fizz_buzz_a_number(n)
		end
	end

	def to_s
		fizz_buzz.join("\n")
	end

	def to_json
		fizz_buzz.to_json
	end

	def to_html
<<EOHTML
<!DOCTYPE HTML>
<html lang="en">
<head>
</head>
<body>
	<ul>
	#{fizz_buzz.map{|n| "	<li> #{n} </li> "}.join("\n")}
	</ul>
</body>
EOHTML
	end
end

f = FizzBuzz.new(30)
puts f
puts f.to_json
puts f.to_html		
	

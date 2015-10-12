 
puts 'Give me a number?'
number = gets

def always_3(number)
	number_1 = ((((number.to_i + 5) * 2) - 4) / 2) - 	number.to_i
 	puts "Always #{number_1.to_s}."
end

always_3(number)

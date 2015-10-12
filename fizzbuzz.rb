fizzbuzz = 0
 
while (fizzbuzz < 101)
if fizzbuzz % 15 == 0
puts 'FizzBuzz' 
elsif fizzbuzz % 5 == 0
puts 'Buzz'
elsif fizzbuzz % 3 == 0
puts 'Fizz'
else
puts  "#{fizzbuzz}"   
end
fizzbuzz += 1
end


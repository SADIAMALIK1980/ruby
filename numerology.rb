puts "Please enter your date of Brith (format: MMDDYYY)"

dob = gets

my_dob = Array.new

my_dob = dob

number = my_dob[0].to_i + my_dob[1].to_i + my_dob[2].to_i + my_dob[3].to_i + my_dob[4].to_i + my_dob[5].to_i + my_dob[6].to_i

number = number.to_s

new_number = number[0].to_i + number[1].to_i

if (new_number > 9)

new_number = new_number.to_s
new_number = new_number[0].to_i + new_number[1].to_i
end

puts "Your numerology number is #{new_number}."

case new_number
when 1
    puts "\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
    puts "\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
    puts "\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
    puts "\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
    puts "\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
    puts "\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
    puts "\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
    puts "\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
    puts "\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end

#attribute accessor code
class Person

attr_accessor :name, :email, :address

end

class Student < Person

attr_writer :idnum
attr_reader :idnum

def about_student
        return "#{@name} lives at #{@address} email is #{@email} and ID Number #{@idnum}."
end
end
 
myself = Person.new
myself.name = 'Sadia Malik'
myself.email = 'sm.freelance@hotmail.com'
myself.address = '20 Guild, London, UK'

my_student = Student.new
my_student.name= "Dali"
my_student.email = 'student@hotmail.com'
my_student.address = '33 Guild, London, UK'
my_student.idnum = '333345'

puts my_student.about_student
puts myself.inspect
puts my_student.inspect
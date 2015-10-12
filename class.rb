class Person
    def set_name=(name)
        @name = name
    end
    
    def get_name
        return @name
    end
    
    def set_email=(email)
        @email = email
    end
    
    def get_email
        return @email
    end
    
    def set_address=(address)
        @address = address
    end
    
    def get_address
        return @address
    end
end

class Student < Person

def set_idnum=(idnum)
        @idnum = idnum
    end
    
    def get_idnum
        return @idnum
    end

def about_student
        return "#{@name} lives at #{@address} email is #{@email} and ID Number #{@idnum}."
end
end
 
myself = Person.new
myself.set_name = 'Sadia Malik'
myself.set_email = 'sm.freelance@hotmail.com'
myself.set_address = '20 Guild, London, UK'

my_student = Student.new
my_student.set_name= "Dali"
my_student.set_email = 'student@hotmail.com'
my_student.set_address = '33 Guild, London, UK'
my_student.set_idnum = '333345'

puts my_student.about_student
puts myself.inspect
puts my_student.inspect
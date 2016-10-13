class Person

  attr_accessor :first_name, :last_name, :gender, :age

  def initialize(first_name, last_name, gender, age)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @age = age
  end

  def introduction
    puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
  end

end

new_person = Person.new("Charlie", "Smith", "female", 0)
new_person.introduction

class Student < Person
  def learning
    puts "#{@first_name} is learning!"
  end
end

new_student = Student.new("Jane", "Doe", "female", 33)
new_student.learning
new_student.introduction

class Teacher < Person
  def teaching
    puts "#{@first_name} is teaching!"
  end
end

new_teacher = Teacher.new("Joseph","Huey","male",49)
new_teacher.teaching
new_teacher.introduction
new_teacher.learning

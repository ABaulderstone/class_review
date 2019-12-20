class Student
  attr_reader :id
  attr_accessor :name, :age

  def initialize(name, age, id)
    @name = name
    @age = age
    @id = id
  end
end

class Campus
  attr_reader :students

  def initialize(location)
    @location = location
    @students = []
  end

  def add_student(name, age, id)
    student = Student.new(name, age, id)
    students.push(student)
  end
end

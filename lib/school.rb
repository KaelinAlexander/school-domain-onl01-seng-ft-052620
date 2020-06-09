require "pry"

class School
  attr_accessor :name, :roster, :grade
  
  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
        @grade = grade
  end

  def grade(grade)
    @roster[grade]
  end

<<<<<<< HEAD
  # def sort
  #   sorted = {}
  #   @roster.each do |grade, student|
  #     sorted[grade] = student.sort
  #   end
  #   sorted
  # end
  
  def sort
    @roster.each do |grade, student|
      student.sort!
=======
  def sort
    @roster.each do |grade|
      grade.sort_by{|key, v| v}
>>>>>>> 9de3c0b4598f4e62e84b22634a86e3e1a4ac6b63
    end
  end 

end
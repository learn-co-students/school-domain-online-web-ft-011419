require 'pry'
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    #@student_name = student_name
    #@grade = grade
    #binding.pry
    
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << student_name
  end
  
  def sort 
    sorted_students = {}
      @roster.each do |grades, students|
      sorted_students[grades] = students.sort
      end 
    sorted_students  
  end  
  
  def grade(grade)
    @roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
  end
end
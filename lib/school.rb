require "pry"

class School
  attr_accessor :roster, :name
  
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    new_hash = {}
    @roster.collect do |k,v|
      new_hash[k] = v.sort
      
    end
    new_hash
  end
  
end
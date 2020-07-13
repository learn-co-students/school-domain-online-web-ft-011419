require "pry"

class School
  attr_accessor :name, :roster, :grade, :sort
  def initialize(name)
   @name=name 
  @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
  roster[grade]
  end


 def sort
 aka = {}
 roster.each do |grade, name|
  aka[grade] = name.sort
  end
aka
end
  
end
 
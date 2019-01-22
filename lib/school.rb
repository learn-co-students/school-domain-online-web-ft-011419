# code here!

class School
  attr_accessor :name, :roster
  
   def initialize(name)
     @name = name
     @roster = {}
   end
     
   def add_student(student, grade)
       roster[grade] ||= []
       roster[grade] << student
   end
   
   def grade(grades)
     roster[grades]
   end
   
   def sort
     sorted_roster = {}
     roster.each do |students, grades|
       sorted_roster[students] = grades.sort
     end
     sorted_roster
   end
 end
 
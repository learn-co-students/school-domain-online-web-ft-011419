class School
  attr_accessor :name, :roster
  	
  def initialize(name)
    @name = name 
    @roster = {}  
  end
  
  
  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.has_key?(grade) 
    @roster[grade] << student_name
   
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.each {|grade, students_array| students_array.sort!}
  end 

end

# code here!
class School
  
  attr_accessor :roster
  attr_reader :name
  
  def initialize(name)
    
    @name = name
    @roster = {}
    
  end
  
  def add_student(name, grade)
    
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade]<< name
    
  end
  
  def grade(grade)
    
     @roster.values_at(grade).flatten
     
    
  end
  
  def sort
    
    temproster = {}
    
    @roster.each do |grade, students| 
      
      temproster[grade] =[]
      temproster[grade] = students.sort
    
    end
    
    @roster = temproster
  
  end
  
end
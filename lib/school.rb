class School
  attr_reader :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade 
    
    if roster.length == 0 
      @roster[grade] = [] 
      @roster[grade] << student_name
    elsif @roster.key?(grade)
      @roster[grade] << student_name
    else @roster[grade] = []
      @roster[grade] << student_name
    end
  end 
  
  def grade(grade)
    @roster.each do |grades, students|
      if grades == grade 
       return students.sort 
     end
    end
  end
  
  def sort 
    sorted_students = {}
    @roster.each do |grade, student|
    sorted_students[grade] = student.sort 
  end
  sorted_students
  end
end



# code here!
class School
  def initialize(name)
    @name=name
    @roster = {}
  end
 attr_accessor :roster, :name
  def add_student(student, grade_level)
    if @roster.has_key?(grade_level)
      @roster[grade_level] << student
    else
      @roster[grade_level] = [student]
    end
  end
  def grade(grade_level)
    @roster[grade_level]
  end
  def sort 
    roster.each do |grade_level, students|
      students.sort!
    end
  end
end
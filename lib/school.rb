# class School
#   attr_reader :roster
#
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end
#
#   def add_student(name, grade)
#     if @roster[grade]
#       @roster[grade] << name
#     else
#       @roster[grade] = []
#       @roster[grade] << name
#     end
#   end
#
#   def grade(grade)
#     @roster[grade]
#   end
#
#   def sort
#     sorted_roster = {}
#     @roster.each do |grade, students|
#       sorted_roster[grade] = students.sort
#     end
#     sorted_roster
#   end
# end

class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, student_list|
      sorted_roster[grade] = student_list.sort
    end
    sorted_roster
  end
end

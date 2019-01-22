# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
  @name = name
  @roster = {}
  end


  def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
  end


def grade(num)
@roster[num]
end

def sort
  new_hash = {}
  @roster.each {|grade, students| new_hash.store(grade, students.sort) }
  new_hash
    end
  end

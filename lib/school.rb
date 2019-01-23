class School
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << name
  end
  
  def grade(_grade)
    @roster[_grade]
  end
  
  def sort
    newhash = {}
    @roster.each do |grade, names|
      newhash[grade] = names.sort
    end
    newhash
  end
end
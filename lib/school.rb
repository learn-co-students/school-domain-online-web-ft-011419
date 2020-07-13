class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

   def add_student(student_name, grade)
     @student_name = student_name
     @grade = grade

     @roster[@grade] = @student_name{10=>["AC Slater"]}
   end

   def sort
     nu_hash = {}
     roster.each do |x, y|
       nu_hash[x] = y.sort
     end
     nu_hash
   end

   end



   school = School.new("Bayside High School")
   school.roster
   school.add_student("Zach Morris", 9)
   school.add_student("Moshe Zeus", 9)
   school.add_student("Onkelos Octavius", 9)
   school.roster
   school.add_student("Sugar Zaza", 5)
   school.roster
   school.add_student("Theo Madus", 5)
   school.add_student("Abbah Zabbah", 2)
   school.roster
   school.grade(9)
   school.sort

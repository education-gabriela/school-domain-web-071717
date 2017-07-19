class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(grade_number)
    self.roster[grade_number]
  end

  def sort
    self.roster.sort_by do |grade, student|
      student.sort!
      grade
    end.to_h
  end
end

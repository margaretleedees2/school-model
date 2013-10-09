class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    self.roster[grade] ||= [] #substituted self for @roster; add if it doesn't already exist
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    assorted_roster = {}
    self.roster.each do |grade,student|
      assorted_roster[grade] = student.sort
    end
    assorted_roster

  end
end
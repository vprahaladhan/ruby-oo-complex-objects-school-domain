# code here!
class School 

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name 
    @name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = @roster[grade] ? @roster[grade] << name : [] << name  
  end  

  def grade(input_grade)
    @roster[input_grade]
  end  

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
    @roster
  end
end
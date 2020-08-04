class School
  
  def initialize(school_name) #created a School class
    @school_name = school_name 
    @roster = {} 
      #gave the School class a roster with the value of an empty hash upon initialization, but will be built out to contain keys of grade levels
  end 
  
  def roster
      #here we write a roster method for the School class
    @roster
    #here we are returning the roster instance variable
  end 
  
  def add_student(name, grade) 
      #defining add_student method with name, grade arguments
    @student_name = name
    #here we make and use the @student_name instance variable to assign our value of name to
    @grade = grade
    #assign @grade instance value as value of grade 
    if @roster.include?(grade) == false
        #seeing IF the ROSTER has a KEY of X GRADE, IF it does we PUSH the nane of the student into the array that the appropriate grade points to 
      @roster[grade] = [] 
         #HOWEVER if the grade KEY does already exist, ie if the student is at their assigned grade, we erase it's current contents by making a key of grade and setting it to equal an empty array
         #this would pass as hash => {grade=>[]} 
         # When we first create the key and point it to a value of an empty array, we are able to then successfully add items, like our student's grade, to that array.
    end
    @roster[grade] << name
  end
  
  def grade(number) #a method, grade, takes in an argument of a grade
     @roster[number] #the method returns all of the students in argument
   end 
  
  def sort #we're making a sorted list of all the students (name variable) using a hash
    @roster.each do |grade, name|
      @roster[grade] = name.sort
      # @roster.each do |grade, name|
      #  @
    end
  end 
  
  
end 



class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
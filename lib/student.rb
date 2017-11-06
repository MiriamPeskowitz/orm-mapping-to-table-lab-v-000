class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade, :db
  attr_reader :id

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def.count_all_students_in_grade_9
  end 


  def students_below_12th_grade
  end 


  def first_X_students_in_grade_10
  end 

  def first_X_students_in_grade_10
  end 

  def all_students_in_grade_X
  end 



  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE students
    SQL

    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
    INSERT INTO students (name, grade)
    VALUES (?,?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]

  end

  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end

    # Student.create(grade: 10, name: "Miriam")
    #create table with metaprogramming ?
    #attribute hash D
    #keyword arguments name: grade:D
    #metaprogram to create new student object,
    #use #save to save that student to db
    #returns student objct

end

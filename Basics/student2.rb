 class Person
    def initialize(firstName, lastName, gender, age)
      @firstName = firstName
      @lastName = lastName
      @gender = gender
      @age = age
    end
    # هذه الدالة للحصول فقط على قيمة الإسم الأول فقط 
    attr_accessor :firstName
      # هذه الدالة للحصول فقط على قيمة الإسم الأخير فقط 
    def lastName
      @lastName
    end
      # هذه الدالة للحصول فقط على قيمة الجنس فقط 
    def gender
      @gender
    end
      # هذه الدالة للحصول فقط على قيمة العمر فقط 
    def age
      @age
    end
  end
  
  
  person = Person.new("محمد", 'صابر', 'ذكر', 25)
  puts person.firstName # => محمد
  puts person.lastName # => صابر
  puts person.gender # => ذكر
  puts person.age # => 25
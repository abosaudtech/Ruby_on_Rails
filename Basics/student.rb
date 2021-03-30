class Student
    def initialize(first_name:, last_name:)
        @first_name = first_name
        @last_name = last_name
    end
    # You can instance it like this:
    def first_name
        @first_name
    end
    # Or like this:
    attr_accessor :last_name

    def full_name
        puts "Hi, I'm #{first_name} #{last_name}"
    end
end

my_student = Student.new(first_name: 'Sameer', last_name: 'Abod')

my_student.full_name
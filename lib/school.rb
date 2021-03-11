require "pry"

class School

    # attr_accessor 
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(stud_name, grade)
        roster[grade] ||= []
        roster[grade] << stud_name
    end       

    def grade(stud_grade)
        roster[stud_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, names|
            sorted[grade] = names.sort
        end
        sorted

    end


end

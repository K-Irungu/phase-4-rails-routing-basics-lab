class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        ordered_students = Student.all.order(grade: :DESC)
        render json: ordered_students
    end

    def highest_grade
        highest_grade = Student.all.order(grade: :DESC).first
        render json: highest_grade
    end

end

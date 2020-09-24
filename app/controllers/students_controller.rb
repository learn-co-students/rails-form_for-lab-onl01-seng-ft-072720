class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to @student
    end

    def show
        find_student
    end

    def edit
        find_student
    end

    def update
        find_student.update(student_params)
        redirect_to @student
    end

    private

    def find_student
        @student = Student.find_by(id: params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end



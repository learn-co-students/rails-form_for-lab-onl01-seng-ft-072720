class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        current_student
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to @student
    end

    def edit
        current_student
    end

    def update
        current_student
        @student.update(student_params)
        redirect_to @student
    end

    private

    def current_student
        @student = Student.find_by(id: params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def student_params_custom(*args)
        params.require(:student).permit(*args)
    end


end
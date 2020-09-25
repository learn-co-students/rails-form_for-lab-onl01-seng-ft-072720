class StudentsController < ApplicationController

    def new 
        @student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(allow_params(:first_name, :last_name))
        redirect_to student_path(@student) 
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(allow_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def allow_params(*args)
        params.require(:student).permit(*args)
    end
end
class StudentsController < ApplicationController

    def index
      @student = Student.all
    end 

    def new
      @student = Student.new
    end 

    def create
      @student = Student.new(students_params)
      @student.save
      redirect_to @student 
    end

    def show
      @student = Student.find_by(id: params[:id])
    end 

    def edit 
      @student = Student.find_by(id: params[:id])
    end 

    def update
      @student = Student.find_by(id: params[:id])
      @student.update(students_params)
      redirect_to @student
    end 

private
    def students_params
        params.require(:student).permit(:first_name, :last_name)
    end 
end

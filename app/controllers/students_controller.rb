class StudentsController < ApplicationController

    def new 
        @student = Student.new
    end 

    def create 
        @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        @student.save(student_params)
        redirect_to @student
    end 
    
    def show 
        @student = Student.find(params[:id])
    end 

    def edit 
        @student = Student.find(params[:id])
    end 

    def update 
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to @student
    end

    private 

    def student_params 
        params.require(:student).permit(:first_name, :last_name)
    end 
end
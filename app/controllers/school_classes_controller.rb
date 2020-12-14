class SchoolClassesController < ApplicationController

    def new 
        @school_class = SchoolClass.new
    end 

    def create 
        @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        @school_class.save(school_class_params) 
        redirect_to @school_class
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to @school_class
    end
    
    private 

    def school_class_params 
        params.require(:school_class).permit(:title, :room_number)
    end 
end
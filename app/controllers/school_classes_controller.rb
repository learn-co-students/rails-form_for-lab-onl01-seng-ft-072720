class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        current_school_class
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to @school_class
    end

    def edit
        current_school_class
    end

    def update
        current_school_class
        @school_class.update(school_class_params)
        redirect_to @school_class
    end

    private

    def current_school_class
        @school_class = SchoolClass.find_by(id: params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def school_class_params_custom(*args)
        params.require(:school_class).permit(*args)
    end

    


end
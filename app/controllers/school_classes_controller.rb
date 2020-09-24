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
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
    end

    def edit
    end

    def update
    end

    private

    def current_school_class
        @school_class = SchoolClass.find_by(id: params[:id])
    end

    def school_class_params(*args)
        params.require(:school_class).permit(*args)
    end


end
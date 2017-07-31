class CourseController < ApplicationController


  ##CREATE
  def new
  end

  def create
    @course = Course.new(title: params[:title])
    @course.save

    @place_ids = params[:place_ids]
    @place_names = params[:place_names]
    @place_ids_split = @place_ids.split(',')
    @place_names_split = @place_names.split(',')
    @locations = @place_ids_split.zip(@place_names_split)

    @l =[]
    @locations.each do |l_i,l_n|
      @l<< @course.locations.new(place_id: l_i, name: l_n)
    end
    @l.each(&:save)

    redirect_to '/course/show'
  end

  ##READ
  def show
    @courses = Course.all
  end

  def index
    @course = Course.find(params[:id])
  end


  ##UPDATE
  def edit
  end

  def update
  end


  ##DELETE
  def destroy
  end


end

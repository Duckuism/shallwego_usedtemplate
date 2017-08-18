class ForeignerController < ApplicationController
  before_action :authenticate_user!
  before_action :check_author, only: [:foreigner_concept_edit, :update, :destroy]

  ##CREATE
  def show
  end
  def foreigner_hangout_concept
  end

  def create
    @concept = Concept.new(sex:params[:sex], start_date: params[:start_date], end_date: params[:end_date],
                          accommodation_type: params[:accommodation_type], people: params[:people],
                          fee: params[:fee], description: params[:description], hangout_type: params[:hangout_type],
                          user_id: current_user.id, location: params[:location], start_time:params[:start_time],
                          end_time:params[:end_time],author:params[:author],image:params[:image],
                          introduce:params[:introduce])

    if @concept.save
      flash[:alert] = "Save!"
      redirect_to  '/'
    else
      flash[:alert] = "Fail"
      redirect_to '/'
    end
  end

  ##READ
  def foreigner_list
    @concepts = Concept.all.reverse
  end

  def list
  end

  def foreigner_detail
    @concept = Concept.find_by(id:params[:id])
  end


  ##UPDATE
  def foreigner_concept_edit
  end

  def update
    # @concept.sex = params[:sex]
    @concept.start_date = params[:start_date]
    @concept.start_time = params[:start_time]
    @concept.end_date = params[:end_date]
    @concept.end_time = params[:end_time]
    @concept.accommodation_type = params[:accommodation_type]
    @concept.people = params[:people]
    @concept.fee = params[:fee]
    @concept.description = params[:description]
    @concept.hangout_type = params[:hangout_type]
    @concept.location = params[:location]
    if @concept.save
      flash[:alert] = "update!"
      redirect_to '/'
    else
      render "foreigner_concept_edit"
    end
  end


  ##DELETE
  def destroy
    @concept.destroy
    flash[:alert] = "Success!"
    redirect_to '/'
  end

  private

  def check_author
    @concept = Concept.find_by(id:params[:id])
    redirect_to '/' unless @concept.user_id == current_user.id
  end
end

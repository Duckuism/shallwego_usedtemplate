class LikesController < ApplicationController
  before_action :authenticate_user!

  def like_toggle
    like = Like.find_by(user_id: current_user.id, course_id: params[:course_id])

    if like.nil?
      Like.create(user_id: current_user.id, course_id: params[:course_id])
    else
      like.destroy
    end
    @likeCount = Like.where(course_id: params[:course_id]).size

    # render :jason => @likeCount
    render json: @likeCount

    # redirect_to :back
  end
end

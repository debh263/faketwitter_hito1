class LikesController < ApplicationController
  before_action :authenticate_user! 

  def create
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    if @like && @like.active
      @like.update_atributte(active: false)
    elsif @like && !@like.active
      @like.update_atributte(active: true)
    else
      @like = Like.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    end
  end
end
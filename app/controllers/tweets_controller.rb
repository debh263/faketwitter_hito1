class TweetsController < ApplicationController
  
  

  def index   
    @tweet = Tweet.new 
    @tweets = Tweet.order(:created_at).page params[:page]
  end

  def new
    @tweet = Tweet.new

  end

  def show
  end

  def edit
  end

  def create
    @tweets = Tweet.order(:created_at).page 1
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = "Tu tweet ha sido creado. :)"
      redirect_to root_path      
    else         
      render :index      
    end
    
  end

  def update
  end

  def destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content, :image_url)
  end
end

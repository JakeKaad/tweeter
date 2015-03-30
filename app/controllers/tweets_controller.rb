class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      flash[:notice] = "Tweet created!"
    else
      flash[:alert] = "Sorry! Try again"
    end
    respond_to do |format|
      format.html {  redirect_to root_path }
      format.json
    end

  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end

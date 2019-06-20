class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

   def create
    ## TODO: 仮ユーザー
    user = User.first
    @tweet = user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to timeline_index_path
    end
  end

   private
  def tweet_params
    params.require(:tweet).permit(
      :tweet
    )
  end
end

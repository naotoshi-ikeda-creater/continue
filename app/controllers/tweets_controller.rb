class TweetsController < ApplicationController

    def index
        @tweets = Tweet.all
    end 

    def new
    end

    def create
        Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text])
    end

    private 
    def tweet_params
        params.permit(:name, :text)
    end

end

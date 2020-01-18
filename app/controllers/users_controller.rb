class UsersController < ApplicationController
    def show
        binding.pry
        @nickname = current_user.nickname
        @tweets =   @tweets = current_user.tweets.order("created_at DESC")
    end 
end

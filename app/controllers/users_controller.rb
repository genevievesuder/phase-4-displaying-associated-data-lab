class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user, include: :items, status: :ok
    end
end

#This method is sending back a specific user (by id) and their associated items 
#Users has_many :items
#One to many relationship

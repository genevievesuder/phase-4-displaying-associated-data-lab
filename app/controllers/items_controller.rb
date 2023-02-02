class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items, include: :user, status: :ok
    end


    #^This method is sending back all of the items and including their associated users
    #Item belongs_to :user
    #One to many relationship


    # def
    # items = Item.all
    # render json: items, only: [:description, :name, :price],
    # include: [user: {only: [:username, :city]}] status: :ok
    # end

    #^This method is Grabbing all Items -but only the Item's descriptions, names, and prices
    #Including the user associated with THAT item -but only the users usernames and cities


end

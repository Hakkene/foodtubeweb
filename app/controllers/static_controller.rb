class StaticController < ApplicationController
    def index
        @users = User.all
        @user = User.find_by id: '1'
        @ingredient = Ingredient.find_by id: '1'
    end
end

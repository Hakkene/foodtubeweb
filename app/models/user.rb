class User < ApplicationRecord
    has_and_belongs_to_many :Ingredients, :join_table => :users_ingredients
    
    has_many :reviews
end

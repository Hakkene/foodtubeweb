class Recipe < ApplicationRecord
    has_and_belongs_to_many :Ingredients, :join_table => :recipes_ingredients
      
      has_many :reviews
end

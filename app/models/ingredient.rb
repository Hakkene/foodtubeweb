class Ingredient < ApplicationRecord
    has_and_belongs_to_many :recipes, :join_table => :recipes_ingredients
     has_and_belongs_to_many :users, :join_table => :users_ingredients
end

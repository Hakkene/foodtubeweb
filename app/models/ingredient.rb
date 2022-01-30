class Ingredient < ApplicationRecord
      validates :name, presence: true, uniqueness: true

      
      has_and_belongs_to_many :users, :join_table => :ingredients_users



      has_and_belongs_to_many :recipes, :join_table => :recipes_ingredients
end

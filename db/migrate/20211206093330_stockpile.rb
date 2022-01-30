class Stockpile < ActiveRecord::Migration[6.1]
  def change

    create_table :ingredients_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :ingredient, index: true
    end




  end
end

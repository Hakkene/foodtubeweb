class User < ApplicationRecord
    validates :nickname, presence: true, uniqueness: true

has_secure_password
has_secure_token

 has_and_belongs_to_many :ingredients, :join_table => :ingredients_users
 has_many :reviews

def invalidate_token
    self.update_columns(token: nil)
  end



end

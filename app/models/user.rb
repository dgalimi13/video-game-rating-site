class User < ApplicationRecord
    has_many :reviews
    has_many :games
    
    validates :username, uniqueness: true, presence: true
    has_secure_password
end

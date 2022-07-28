class User < ApplicationRecord
    has_many :reviews
    has_many :guitars
    
    validates :username, uniqueness: true, presence: true
    has_secure_password
end

class Game < ApplicationRecord
  belongs_to :console
  belongs_to :user
  validates :name, presence: true
  # has_many :reviews
  # has_many :users, through: :reviews

  def console_attributes=(attributes)
    self.console = Console.find_or_create_by(attributes) if !attributes['name'].empty?
    self.console
  end 

end

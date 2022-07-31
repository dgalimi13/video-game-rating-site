class Game < ApplicationRecord
  belongs_to :console
  belongs_to :user
  validates :name, presence: true
  validates :not_a_duplicate
  # has_many :reviews
  # has_many :users, through: :reviews

  def not_a_duplicate
    if Game.find_by(name: name, console_id: console_id)
      errors.add(:name, "has already been added for that make")
    end 
  end 

  def console_attributes=(attributes)
    self.console = Console.find_or_create_by(attributes) if !attributes['name'].empty?
    self.console
  end 

end

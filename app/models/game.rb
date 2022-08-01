class Game < ApplicationRecord
  belongs_to :console
  belongs_to :user
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  validate :not_a_duplicate

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

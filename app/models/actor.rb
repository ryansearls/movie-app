class Actor < ApplicationRecord

  validates :first_name, :last_name, length: { minimum: 2 }
  validates :first_name, :last_name, :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }
    
  belongs_to :movie #returns hash of one single movie

end

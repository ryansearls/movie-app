class Movie < ApplicationRecord
  validates :title, :year, :plot, presence: true
  validates :year, numericality: { only_integer: true }

  has_many :actors
end

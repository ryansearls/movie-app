class Movie < ApplicationRecord
  
  validates :title, length: { minimum: 2 }
  validates :plot, presence: true
  validates :year, numericality: { greater_than: 1850 }
  validates :director, length: { minimum: 2 }
  validates :english, presence: true

  
  has_many :actors 
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres = Genre.all
    render json: genres
  end
end

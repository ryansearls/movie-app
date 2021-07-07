class Movie < ApplicationRecord
  validates :title, :year, :plot, presence: true
  validates :year, numericality: { only_integer: true }

  has_many :actors #returns array of many actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres = Genre.all
    render json: genres
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  

#my work below

# movie = Movie.create(title: "Jumanji", year: 1995, plot: "A magical board game unlea
#   ses a world of adventure on siblings Peter and Judy Shepherd.")

# movie = Movie.create(title: "Hardball", year: 2001, plot: "Conor (Keanu Reeves) is a
#   ticket scalper, gambler and, now, Little League coach for a rag-tag team of kids in one of the tough
#   est part of Chicago. He's no role model, but his buddy Jimmy won't help him pay off his gambling debt
#   s unless Conor coaches Jimmy's corporately sponsored team.")


  actor = Actor.create!(first_name: "Robin", last_name: "Williams", known_for: "Alan Parrish", gender: "M", age: 44 , movie_id: 1)

  actor = Actor.create!(first_name: "Kirsten", last_name: "Dunst", known_for: "Judy Shepherd", gender: "F", age: 14, movie_id: 1)
  
  actor = Actor.create!(first_name: "Bebe", last_name: "Neuwirth", known_for: "Nora Shepherd", gender: "F", age: 37, movie_id: 1)
  
  
  actor = Actor.create!(first_name: "Morgan", last_name: "Freeman", known_for: "Ellis Boyd Redding", gender: "M", age: 56, movie_id: 5)
  
  actor = Actor.create!(first_name: "Tim", last_name: "Robbins", known_for: "Andy Dufresne", gender: "M", age: 36, movie_id: 18)
  
  

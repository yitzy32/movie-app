# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
# actor.save
movie = Movie.new(title: "A bugs life", year: 1998, plot: "Looking into the life and struggles of a group of ants")
movie.save
movie = Movie.new(title: "The Incredibles", year: 2004, plot: "Family that has super powers comes out of hiding to fight bad guys")
movie.save
movie = Movie.new(title: "Monsters Inc", year: 2001, plot: "Monsters who fuel their economy by energy aquired from scaring children, switch to fueling their economy by making children laugh")
movie.save

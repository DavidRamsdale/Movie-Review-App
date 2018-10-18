class Movie < ApplicationRecord
    has_many :actor_movies, dependent: :destroy
    has_many :actors, through: :actor_movies, dependent: :destroy
    has_many :reviews , dependent: :destroy
end
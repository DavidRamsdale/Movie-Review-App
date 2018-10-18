class Review < ApplicationRecord
    belongs_to :movie
    # has_many:actors, through::actor_movies
end

class MovieDirector < ApplicationRecord
  belongs_to :movie, optional: true 
  belongs_to :director, optional: true 
end

class Movie < ApplicationRecord
  has_many :movie_directors
  has_many :directors, through: :movie_directors

  has_many :movie_actors
  has_many :actors, through: :movie_actors

  has_many :watch, foreign_key: 'movie_id',class_name: 'Watch'
  has_many :users_watched, through: :watch, source: :user

  has_many :watchlist, foreign_key: 'movie_id',class_name: 'Watchlist'
  has_many :users_watchlisted, through: :watchlist,source: :user

  accepts_nested_attributes_for :directors
  accepts_nested_attributes_for :actors
end

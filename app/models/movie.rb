class Movie < ApplicationRecord
  has_many :movie_directors , dependent: :destroy
  has_many :directors, through: :movie_directors

  has_many :movie_actors , dependent: :destroy
  has_many :actors, through: :movie_actors

  has_many :watch, foreign_key: 'movie_id',class_name: 'Watch' , dependent: :destroy
  has_many :users_watched, through: :watch, source: :user

  has_many :watchlist, foreign_key: 'movie_id',class_name: 'Watchlist' , dependent: :destroy
  has_many :users_watchlisted, through: :watchlist,source: :user

  has_one_attached :image

  accepts_nested_attributes_for :directors
  accepts_nested_attributes_for :actors
end

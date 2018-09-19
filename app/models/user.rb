class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :picture, PictureUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :watch, foreign_key: 'user_id', class_name:'Watch'
	has_many :movies_watch, through: :watch ,source: :movie
	has_many :watchlist, foreign_key: 'user_id', class_name:'Watchlist'
	has_many :movies_watchlist, through: :watchlist, source: :movie

end

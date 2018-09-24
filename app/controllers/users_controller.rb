class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  	@user = User.find_by(id: params[:id])
  	@movies_watch = @user.movies_watch
  	@movies_watchlist = @user.movies_watchlist
  end

  def watched
  	@user = User.find_by(id: params[:id])
  	@movies_watch = @user.movies_watch.page(params[:page]).per(12)
  end
  def watchlist
  	@user = User.find_by(id: params[:id])
  	@movies_watchlist = @user.movies_watchlist.page(params[:page]).per(12)
  end

end

class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find_by(id: params[:id])
	end

	def new
		@movie = Movie.new
		@movie.directors.build
		@movie.actors.build
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to root_path
		else
			render 'new'
		end
	end


	private

	def movie_params
		params.require(:movie).permit(:name, :description,	:image, :directors_attributes => [:name],:actors_attributes => [:name])
	end
end

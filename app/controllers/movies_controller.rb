class MoviesController < ApplicationController
	def new
		@movie = Movie.new
		@movie.directors.build
		@movie.actors.build
	end

	def create
		@movie = Movie.new(movie_params)

		if @movie.save
			redirect_to 'index'
		else
			render 'new'
		end
	end


	private

	def movie_params
		params.require(:movie).permit(:name, :directors_attributes => [:name],:actors_attributes => [:name])
	end
end

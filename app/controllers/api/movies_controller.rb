module Api
  class MoviesController < ApplicationController
    def index
      @movies = Movie.all
      render json: @movies, each_serializer: MoviesSerializer
    end

    def show
      @movie = Movie.find(params[:id])
      render json: @movie
    end
  end
end

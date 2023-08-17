class MoviesController < ApplicationController
  # GET "lists"

  # GET "lists/42"

  # GET "lists/new"
  # POST "lists"

  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new(movies_params)
    if @movies.save
      redirect_to @movies, notice: "Movie was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def movies_params
  params.require{:movies}.permit(:title, :overview, :poster_url, :rating)
  end
end

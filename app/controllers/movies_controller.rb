class MoviesController < ApplicationController
  def index
    @movies = Movie.order('id DESC')
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_path(@movie), notice: "#{@movie.title} was successfully created!"
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :director, :overview, :poster_url)
  end
end

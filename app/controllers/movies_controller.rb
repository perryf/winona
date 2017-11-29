class MoviesController < ApplicationController
  def index
    @movies = Movie.order('id DESC')
    # @movie_results = Tmdb::Search.movie('finding nemo')
    if params['query']
      @movie_results = Tmdb::Search.movie(params['query'])
    end
  end

  def search
    @query = params[:query]
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_path(@movie), notice:
      "#{@movie.title} was successfully created!"
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    if @movie.save
      redirect_to movie_path(@movie), notice: "#{@movie.title} was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path, notice: "#{@movie.title} was successfully deleted."
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :director, :overview, :poster_url, list_ids:[])
  end
end

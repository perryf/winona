class MoviesController < ApplicationController
  def index
    # flash[:notice] = "testinggg"

    @movies = Movie.order('id DESC')

    if params['query'] && params['query'] != ""
      @movie_results = Tmdb::Search.movie(params['query'])
    end
  end

  def show_result
    @movie = Tmdb::Movie.detail(params['id'])
  end

  def add_movie
    @movie = Tmdb::Movie.detail(params['id'])
    @movie_director = Tmdb::Movie.director(@movie.id)[0].name

    @new_movie = Movie.create(
      title: @movie.title,
      release_date: @movie.release_date,
      director: @movie_director,
      overview: @movie.overview,
      poster_url: "https://image.tmdb.org/t/p/w640#{@movie.poster_path}"
    )

    redirect_to movie_path(@new_movie), notice: "#{@new_movie.title} was added."
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_path(@movie), notice:
      "#{@movie.title} was created."
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
      redirect_to movie_path(@movie), notice: "#{@movie.title} was updated."
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    if @movie.lists.count == 0
      @movie.destroy

      redirect_to movies_path, notice: "#{@movie.title} was deleted."
    else
      redirect_to movie_path(@movie), alert: "#{@movie.title} can't be deleted because it belongs to one or more lists."
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :director, :overview, :poster_url, list_ids:[])
  end
end

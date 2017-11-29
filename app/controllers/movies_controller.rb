class MoviesController < ApplicationController
  def index
    @movies = Movie.order('id DESC')
    # @movie_results = Tmdb::Search.movie('finding nemo')
    if params['query']
      @movie_results = Tmdb::Search.movie(params['query'])
    end
  end

  # def search
  #   @query = params[:query]
  # end

  def show_result
    puts '**********************'
    puts params
    puts '**********************'
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

    redirect_to movie_path(@new_movie), notice: "#{@new_movie.title} was successfully added!" 
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

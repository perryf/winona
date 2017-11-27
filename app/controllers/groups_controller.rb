class GroupsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @group = Group.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @list_ids = params[:list_ids] || []

    @list_ids.each do |list|
      List.find(list).groups.create(movie: @movie)
    end

    redirect_to lists_path
  end
end

class GroupsController < ApplicationController
  def new
    @user = current_user
    @lists = @user.lists.all
    @movie = Movie.find(params[:movie_id])
    @group = Group.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @list_ids = params[:list_ids] || []

    @list_ids.each do |list|
      List.find(list).groups.create(movie: @movie)
    end

    redirect_to user_lists_path(current_user)
  end
end

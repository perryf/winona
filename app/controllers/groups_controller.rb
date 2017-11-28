class GroupsController < ApplicationController
  def new
    # @user = current_user
    # @lists = @user.lists
    @movie = Movie.find(params[:movie_id])
    @group = Group.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @list_ids = params[:list_ids] || []

    @list_ids.each do |list|
      @group = List.find(list).groups.new(movie: @movie)
      @count = 0
      if !@group.save
        @count += 1
      end
    end

    if @count > 0
      render :new
    else
      redirect_to movie_path(@movie)
    end
  end
end

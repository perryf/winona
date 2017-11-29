class GroupsController < ApplicationController
  def new
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
    # @group = @movie.groups.new(list: params[:list_id])
    #
    # if @group.save
    #   redirect_to movie_path(@movie), notice: "you did it"
    # else
    #   render :new
    # end
    #
    # private
    # def group_params
    #   params.require(:group).permit(:list_id)
    # end
  end
end

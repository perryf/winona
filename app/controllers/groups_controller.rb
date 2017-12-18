class GroupsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @group = Group.new
  end

  def create
    @user = current_user
    @movie = Movie.find(params[:movie_id])
    @list = List.find(params[:list_id])

    @group = @movie.groups.new(list: @list)

    if @group.save
      redirect_to user_list_path(@user, @list), notice: "#{@movie.title} was added to #{@list.name}"
    else
      render :new
    end
  end
end
# Good job making a slim functional controller.  

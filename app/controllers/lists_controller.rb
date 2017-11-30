class ListsController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @user = current_user
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params.merge(user: current_user))

    if @list.save
      redirect_to user_lists_path, notice: "#{@list.name} was created."
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @list = List.find(params[:id])
  end

  def update
    @user = current_user
    @list = @user.lists.find(params[:id])

    if @list.user == @user
      @list.update(list_params)

      if @list.save
        redirect_to user_list_path(@user, @list), notice: "#{@list.name} was updated."
      else
        render :edit
      end
    else
      flash[:alert] = "You can only edit lists that you create."
    end
  end

  def destroy
    @list = List.find(params[:id])

    if @list.user == current_user
      @list.destroy

      redirect_to user_lists_path, notice: "#{@list.name} was deleted."
    else
      redirect_to root_path, alert: "You can only delete lists that you create."
    end

  end

  private
  def list_params
    params.require(:list).permit(:name, movie_ids:[])
  end
end

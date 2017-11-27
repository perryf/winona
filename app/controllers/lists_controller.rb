class ListsController < ApplicationController
  def index
    @lists = List.all
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
      redirect_to user_lists_path, notice: "#{@list.name} was successfuly created."
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @list = List.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    @list = @user.lists.find(params[:id])
    @list.update(list_params)

    if @list.save
      redirect_to user_list_path(@list), notice: "#{@list.name} was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to user_lists_path, notice: "#{@list.name} was successfully deleted."
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end

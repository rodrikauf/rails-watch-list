class ListsController < ApplicationController
  before_action :set_list, only: %i[show]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
    #redirect_to nelist_path(@list)
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: "List saved!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @list = List.find(params[:id])
    @list.update
    redirect_to lists_path(@list)
  end

  def destroy
    @list = list.find(params[:id])
    @list.destroy
    redirect_to lists_path(@list), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end

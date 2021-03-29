class InformationsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @informations = Information.all.order("created_at DESC")
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to root_path
    else
      render :edit
    end  
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
    redirect_to root_path
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :text, :date_id, :fish, :size, :weight, :number, :prefecture_id, :area).merge(user_id: current_user.id)
  end
end

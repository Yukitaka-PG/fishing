class InformationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_information, only: [:show, :edit, :update, :destroy]

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
    
  end

  def edit
    
  end

  def update
    if @information.update(information_params)
      redirect_to root_path
    else
      render :edit
    end  
  end

  def destroy
    @information.destroy
    redirect_to root_path
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :text, :date_id, :fish, :size, :weight, :number, :prefecture_id, :area).merge(user_id: current_user.id)
  end

  def set_information
    @information = Information.find(params[:id])
  end
end

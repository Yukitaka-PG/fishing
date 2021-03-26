class InformationsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @informations = Information.all.order("created_at DESC")
  end

  def new
    @information = Information.new
  end

  private

  def information_params
    params.require(:information).permit(:image, :title, :text, :date_id, :fish, :size, :weight, :number, :prefecture_id, :area).merge(user_id: current_user.id)
  end
end

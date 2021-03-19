class InformationsController < ApplicationController
  before_action :information_params

  def index
  end

  def new
  end

  private
  
  def information_params
    params.require(:information).permit(:image, :text, :date_id, :fish, :size, :weight, :number, :prefecture_id, :area)
  end
end

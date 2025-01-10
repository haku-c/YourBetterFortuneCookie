class FortunesController < ApplicationController
  def index
    @allfortunes = Fortune.all
  end
  def show
    @fortune = Fortune.find(params[:id])
  end
end

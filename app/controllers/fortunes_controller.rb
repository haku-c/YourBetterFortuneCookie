class FortunesController < ApplicationController
  def index
    @allfortunes = Fortune.all
  end
  def show
    @fortune = Fortune.find(params[:id])
  end
  def random
    @randfortune = Fortune.find(Fortune.pluck(:id).sample)
  end
end

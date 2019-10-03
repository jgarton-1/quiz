class StarsController < ApplicationController
  def index
    @stars = Star.all
  end
  def new
    @star = Star.new
  end

  def create
    Star.create(star_params)
    redirect_to root_path
  end

  private

  def star_params
    params.require(:star).permit(:name, :desription)
  end

end


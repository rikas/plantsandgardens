class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  # GET /gardens/:id
  def show
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)

    render :new if !@garden.save # will render new.html.erb
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :picture_url, :category)
  end
end

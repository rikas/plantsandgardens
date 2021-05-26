class PlantsController < ApplicationController
  before_action :set_garden, only: %i[new create]

  # GET /gardens/:garden_id/plants/new
  def new
    @plant = Plant.new
  end

  # POST /gardens/:garden_id/plants
  def create
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden)
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :picture_url)
  end
end

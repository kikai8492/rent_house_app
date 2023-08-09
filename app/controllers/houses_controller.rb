class HousesController < ApplicationController
  before_action :set_house, only: %i[ show edit update destroy ]

  def index
    @houses = House.all
  end

  def show
  end

  def new
    @house = House.new
    2.times { @house.stations.build }
  end

  
  def create
    @house = House.new(house_params)
      if @house.save
        redirect_to houses_path
      else
        render :new
      end
  end
  
  def edit
    @house.stations.build
  end

  def update
    if @house.update(house_params)
      redirect_to houses_path
    else
      render :edit
    end
  end

  def destroy
    @house.destroy
    if @house.destroy
      redirect_to houses_path
    else
      render :index
    end
  end

  private

  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:house_name, :rent, :address, :house_age, :remarks, stations_attributes: [:near_station_name, :line_name, :walk, :_destroy, :id])
  end
end
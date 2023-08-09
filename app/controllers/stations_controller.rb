class StationsController < ApplicationController
  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to houses_path
    else
      render :new
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      redirect_to houses_path
    else
      render :edit
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
  end

  private

  def station_params
    params.require(:station).permit(:near_station_name, :line_name, :walk)
  end
end

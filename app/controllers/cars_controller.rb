class CarsController < ApplicationController

  def show
    @car = Car.find(params[:id])
    @visits = @car.visits
  end
end

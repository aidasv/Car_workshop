class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def client_cars
    @cars = Car.where(client_id: params[:client_id])
  end

  def show
    @car = Car.find(params[:id])
    @visits = @car.visits
  end

  def new    
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.client_id = params[:client_id]
    if @car.save
      redirect_to clients_path
    else
      render :new
    end
  end


  private

  def car_params
    params.require(:car).permit(:make,
                                :model,
                                :production_year,
                                :license_plate,
                                :vin_code,
                                :body_type,
                                :cubic_capacity,
                                :power,
                                :fuel,
                                :color,
                                :ta_date)
  end
end
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
    @car = Car.new(make: params[:make],
                      model: params[:model],
                      production_year: params[:production_year],
                      license_plate: params[:license_plate],
                      vin_code: params[:vin_code],
                      body_type: params[:body_type],
                      cubic_capacity: params[:cubic_capacity],
                      power: params[:power],
                      fuel: params[:fuel],
                      color: params[:color],
                      ta_date: params[:ta_date])
    @car.save
    redirect to clients_path
  end
end

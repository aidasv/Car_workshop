class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @cars = @client.cars
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to show_client_path(@client)
    else
      render :new
    end
  end
  
  def pavyko
    @linkas = URLcrypt.decrypt(params[:encrypt])
  end
  private

  def client_params
    params.require(:client).permit(:name,
                                   :surname,
                                   :email,
                                   :phone)
  end


end
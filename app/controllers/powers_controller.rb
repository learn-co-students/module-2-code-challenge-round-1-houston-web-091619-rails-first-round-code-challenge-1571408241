class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
        @heroines = @power.heroines
  end

  def new
    @powers = Power.new
    @powers.save
  end

  def edit
    @powers = Power.find([:id])
  end

  def create
    @powers = Power.create(powers_params)
    @heroines = Heroines.all 
  end

  def update
      @power.update(powers_params)
      redirect_to @power
  end
  
  def destroy
    @power = Power.find(params[:id])
    @power.destroy 
    redirect_to @power
  end 

  def current_power
      @power= Power.find(params[:id])
  end

end

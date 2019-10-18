class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroines = Heroine.find(params[:id])
        @power = @heroines.powers
  end

  def new
    @heroines = Heroine.new
    @heroines.save
  end

  def edit
    @heroines = Heroine.find([:id])
  end

  def create
    @heroines = Heroine.create(heroines_params)
    @powers = Power.all 
  end
  
  def update
      @heroine.update(heroines_params)
      redirect_to @heroine
  end
  
  def destroy
    @heroines = Heroine.find(params[:id])
    @heroines.destroy 
    redirect_to @heroines
  end 

  def current_power
      @heroine= Power.find(params[:id])
  end
end

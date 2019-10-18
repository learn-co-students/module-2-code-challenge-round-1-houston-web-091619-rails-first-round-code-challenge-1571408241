class PowersController < ApplicationController
  
  before_action :current_power, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end
  
  def show 
  end
  
  def new 
    @powers = Power.new 
    @heroines = Heroine.all
  end
  
  def create 
    @power = Power.create(powers_params)      
    redirect_to @power
  end 
    
  
  def edit 
    @powers = Power.all
    @heroines = Heroine.all
  end
  
  def update 
    @power.update(powers_params) 
    redirect_to @powers 
  end
  
  def destroy 
    @power.destroy 
    redirect_to powers_path 
  end
  
  private
  
  def current_power
  @power = Power.find(params[:id])
  end
  
  def powers_params 
    params.require(:power).permit(:name, :description) 
  end

  
end

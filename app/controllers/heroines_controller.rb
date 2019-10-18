class HeroinesController < ApplicationController
  
  before_action :current_heroine, only: [:show, :edit, :update, :destroy]
  
  def index
    @heroines = Heroine.all
  end

  def show 
  end

  def new 
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create 
    @heroine = Heroine.create(heroines_params)      
    redirect_to @heroine
  end 
  

  def edit 
    @heroines = Heroine.all
    @powers = Power.all
  end

  def update 
    @heroine.update(heroines_params) 
    redirect_to @heroine 
  end

  def destroy 
    @heroine.destroy 
    redirect_to heroines_path 
  end

  private

  def current_heroine 
  @heroine = Heroine.find(params[:id])
  end

  def heroines_params 
  params.require(:heroine).permit(:name, :super_name, power_id: []) 
  end


end

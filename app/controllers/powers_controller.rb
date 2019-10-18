class PowersController < ApplicationController
 
  before_action :the_power, only: [:edit, :show, :update, :destroy]
  
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
    @heroines = Heroine.all
  end

  def edit
  end

  def show
  end

  def update
    @power = power.update(power_params)
    redirect_to @power
  end

  def destroy
    @power.destroy
    redirect_to powers_path
  end

  def create
    @power = Power.create
  end

  private

  def power_params
    require.params(:power).permit(:name, :description, :id)
  end

  def the_power
    @power = Power.find(params[:id])
  end
end

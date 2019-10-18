class PowersController < ApplicationController
  before_action :current_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
    @powers = Power.all
  end

  def create
    @power = Power.new(power_params)
    @powers = Power.all
    if @power.valid?
      @power.save
      redirect_to power_path(@power)
    else
      flash[:error] = @power.errors.full_messages
      redirect_to new_power_path
    end
  end

  def update
    @power.update(power_params)
    redirect_to power_path(@power)
  end

  def destroy
  end

  private

  def current_heroine
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end

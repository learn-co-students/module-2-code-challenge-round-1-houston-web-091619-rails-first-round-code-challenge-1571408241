class HeroinesController < ApplicationController
  
  before_action :the_heroine, only: [:edit, :show, :update, :destroy]
  
  def index
    @heroines = Heroine.all
  end
  
  def new
    @powers = Power.all
    @heroine = Heroine.new
  end

  def edit
  end

  def show
    @power = Power.find(params[:id])

  end

  def create
    @heroine = heroine.new

    if heroine.valid?
      @heoine.save
      redirect_to @heroine
    else
      flash[:error] = heroine.errors.full_message
      redirect_to new_heroine_path
    end
  end
  
  def destroy
      @heroine.destroy
      redirect_to heroines_path
  end
    

  def update
    @heroine = heroine.update(heroine_params)
    redirect_to @heroine
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def heroine_params
    require.params(:heroine).permit(:name, :super_name, :power_id)
  end

  def the_heroine
    @heroine = Heroine.find(params[:id])
  end
end

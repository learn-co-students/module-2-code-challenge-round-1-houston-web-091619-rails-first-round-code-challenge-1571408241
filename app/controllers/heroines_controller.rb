class HeroinesController < ApplicationController
  before_action :current, only: [:edit, :update, :show, :destroy]

  def index
    @heroines = Heroine.all
  end
  
  def new
    @heroine = Heroine.new
    @powers = Power.all
  end
  
  def create
    @heroine = Heroine.new(prams)

    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      flash[:error] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end
  
  def edit
    @powers = Power.all
  end
  
  def update
    @heroine.update(prams)
    @heroine.save
    redirect_to @heroine
  end
  
  def show
  
  end
  
  def destroy
  
  end

  private

  def current
    @heroine = Heroine.find(params[:id])
  end

  def prams 
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end

class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new 
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params[:heroine])
    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path
    else
      flash[:error] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
    
  end

  def edit 

  end

  def update

  end

  def destroy

  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.permit(heroine: [:name, :super_name, :power_id])
  end

end

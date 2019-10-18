class PowersController < ApplicationController

  def index
    @powers = Power.all
    end
    
    def show
        @power = Power.find(params[:id])
        @heroines = @power.heroines
    end

    def edit 
        @power = Power.find(params[:id])
    end

    def new
        @power = Power.new
    end

    def create
        @power = Power.new(power_params)
        if @power.valid?
            @power.save
            redirect_to power_path(@power)
        else
            flash[:error] = @power.errors.full_messages
            redirect_to new_power_path
        end
    end

    def update
     @power = Power.find(params[:id])
     @power.update(power_params)
     redirect_to heroine_path (@power)
    end

    def destroy
     @power = Power.find(params[:id])
     @power.destroy
        redirect_to powers_path
    end

    private 

    def power_params
        params.require(:power).permit(:name)
    end
end

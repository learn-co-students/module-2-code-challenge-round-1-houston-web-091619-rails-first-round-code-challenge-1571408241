class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

    def show
        @heroine = Heroine.find(params[:id])
        # @power = @heroines.powers
    end

    def edit 
        @heroine = Heroine.find(params[:id])
    end

    def new
        @heroine = Heroine.new
    end

    def create
        @heroine = Heroine.new(heroine_params)
        if @heroine.valid?
            @heroine.save
            redirect_to heroine_path(@heroine)
        else
            flash[:error] = @heroine.errors.full_messages
            redirect_to new_heroine_path
        end
    end
    
    def update
        @heroine = Heroine.find(params[:id])
        @heroine.update(heroine_params)
        redirect_to heroine_path (@heroine)
    end

    def destroy
        @heroine = Heroine.find(params[:id])
        @heroine.destroy
        redirect_to heroines_path
    end

    private 

    def powers_params
        params.require(:power).permit(:name)
    end
end

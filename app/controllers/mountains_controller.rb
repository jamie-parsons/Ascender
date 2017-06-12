
class MountainsController < ApplicationController
  before_action :set_mountain, except: [:create, :new, :index]

  def index
    @mountains = Mountain.all
    
  end

  def show
  end

  def new
    @mountain = Mountain.new
  end

  def edit
  end

  def update

    if @mountain.update(mountain_params)
      redirect_to mountains_path
    else
      render :edit
    end
  end

  def create
    @mountain = Mountain.new(mountain_params)

    if @mountain.save
      redirect_to mountains_path
    else 
      render :new
    end
  end

  def destroy
    @mountain.destroy
    flash[:notice] = 'Mountain Deleted!'
    redirect_to mountains_path
  end

  private

  def mountain_params
    params.require(:mountain).permit(:name, :elevation, :latitude, :longitude, :ability)
  end

  def set_mountain
    @mountain = Mountain.find(params[:id])
  end
end

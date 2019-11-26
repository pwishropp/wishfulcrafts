class CraftsController < ApplicationController
  
  def index
    @crafts = Craft.all
  end

  def new
    @craft = Craft.new
  end

  def create
    Craft.create(craft_params)
    redirect_to root_path
  end

  def show
    @craft = Craft.find(params[:id])
  end


  private

  def craft_params
    params.require(:craft).permit(:name, :description, :quantity, :option, :cost)
  end
end

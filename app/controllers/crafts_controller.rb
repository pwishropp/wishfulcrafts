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

  def edit
    @craft = Craft.find(params[:id])
  end

  def update
    @craft = Craft.find(params[:id])
    @craft.update_attributes(craft_params)
    redirect_to root_path
  end

  def destroy
    @craft = Craft.find(params[:id])
    @craft.destroy
    redirect_to root_path
  end

  def shop
    @crafts = Craft.all
  end

  private

  def craft_params
    params.require(:craft).permit(:name, :description, :quantity, :option, :cost)
  end
end



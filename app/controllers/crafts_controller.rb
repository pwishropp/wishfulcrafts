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


  private

  def craft_params
    params.require(:craft).permit(:name, :description)
  end
end

class CraftsController < ApplicationController
  
  def index
    @crafts = Craft.all
  end

  def new
    @craft = Craft.new
  end

end

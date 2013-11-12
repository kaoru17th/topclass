class ForecastsController < ApplicationController
  
  
  
  def index
    #@programs = Program.paginate(page: params[:page]).per_page(10)
    @programs = Program.all
  end
  
  def show
    
    
  end
  
end

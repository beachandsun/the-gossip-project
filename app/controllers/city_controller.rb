class CityController < ApplicationController
  
  def index
  	@city = City.new
  end
 
  def show
  	@city = City.all
  end
end

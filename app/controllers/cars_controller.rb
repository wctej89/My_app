class CarsController < ApplicationController

  def create
  	@car = Car.where("price < ? AND mpg > ? AND handling > ? AND interior > ? AND looks > ? AND legroom > ?", 
  					params[:price], params[:mpg], params[:handling], params[:interior], params[:looks], params[:legroom]).first
  end

  def new
  	@car = Car.new
  end

  def show
  	@car = Car.find(params[:id])
  end
  
  def search
    @car = Car.new
  end

  def search_results
    car = params[:car]
    @cars = Car.where("price < ? AND mpg > ? AND handling > ? AND interior > ? AND looks > ? AND legroom > ?", 
            car[:price], car[:mpg], car[:handling], car[:interior], car[:looks], car[:legroom])
  end
end

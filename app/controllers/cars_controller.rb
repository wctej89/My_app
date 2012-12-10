class CarsController < ApplicationController

  def create
  	@car = Car.new(params[:car])
    if @car.save
      flash[:success] = "Car Data Saved Successfully!"
      redirect_to @car
    else
      render 'new'
    end
  end

  def new
  	@car = Car.new
  end

  def show
  	@car = Car.find(params[:id])

    respond_to do |format|
      format.js
      format.html
    end
  end
  
  def search
    @car = Car.new


  end

  def search_results
    car = params[:car]
    @cars = Car.search_query(car)

    respond_to do |format|
      format.js
      format.html
    end
  end

  def research
    
  end


=begin @cars = Car.price_less_than(car[:price])
                .mpg_greater_than(car[:mpg])
                .handling_greater_than(car[:handling])
                .interior_greater_than(car[:interior])
                .looks_greater_than(car[:looks])
                .legroom_greater_than(car[:legroom])
=end


  def index
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update_attributes(params[:car])
      flash[:success] = "Car updated"
      redirect_to @car
    else
      render 'edit'
    end
  end

  def practice
  end

  def testing
  end
end

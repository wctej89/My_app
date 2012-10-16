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
  end
  
  def search
    @car = Car.new
  end

  def search_results
    car = params[:car]

    #Car.where("price <= ? AND mpg >= ? AND handling >= ? AND interior >= ? AND looks >= ? AND legroom >= ?", 
            #car[:price], car[:mpg], car[:handling], car[:interior], car[:looks], car[:legroom])

    @cars = Car.price_less_than(car[:price])
                .mpg_greater_than(car[:mpg])
                .handling_greater_than(car[:handling])
                .interior_greater_than(car[:interior])
                .looks_greater_than(car[:looks])
                .legroom_greater_than(car[:legroom])

  end

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
end


#evening-refuge-9788
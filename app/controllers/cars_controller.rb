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

    @cars = Car.price_less_than(params[:price]).mpg_greater_than(params[:mpg]).handling_greater_than(params[:handling]).interior_greater_than(params[:interior]).
    looks_greater_than(params[:looks]).legroom_greater_than(params[:legroom])

  end

  def index
  end

  def edit
    @car = Car.find(params[:id])
  end

  def practice
  end
end


#evening-refuge-9788
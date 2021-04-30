class TimeslotsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @timeslot = Timeslot.new
  end

  def create
    @timeslot = Timeslot.new(timeslot_params)
    # we nedd restaurant_id to associate timeslot with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @timeslot.restaurant = @restaurant
    if @timeslot.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @timeslot =  Timeslot.find(params[:id])
    restaurant = @timeslot.restaurant
    @timeslot.destroy
    redirect_to restaurant_path(restaurant)
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:day,
    :morning_start_hour,
    :morning_end_hour,
    :afternoon_start_hour,
    :afternoon_end_hour,
    :restaurant_id)
  end
end

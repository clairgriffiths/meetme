class CalendarsController < ApplicationController
  
  def new
    @calendar = Calendar.new
  end
  
  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendars_path
    else
      render :new
    end
  end
  
  private
  
  def calendar_params
    params.require(:calendar).permit(:start_date, :end_date, days_attributes: [:date, :day, :month, :year])
  end
end


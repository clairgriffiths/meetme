class CalendarsController < ApplicationController

  def new
    @calendar = Calendar.new
    # clean up
    @calendar.days.build
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      @calendar.add_days
      redirect_to calendar_path(@calendar)
    else
      render :new
    end
  end

  def show
    @calendar = Calendar.find(params[:id])
  end

  private

  def calendar_params
    params.require(:calendar).permit(:start_date, :end_date, :mondays, days_of_week: [])
  end
end


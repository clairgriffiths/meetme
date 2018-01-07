class Calendar < ActiveRecord::Base
  has_many :calendar_days
  has_many :days, through: :calendar_days
  
  serialize :days_of_weeks, Array
  
  
  def create_calendar_days
   # result = (self.start_date..self.end_date).to_a.select {|k| @days_of_week.include?(k.wday)}
    # iterate through and create day!
  end
  
  
  
end

# start date
# logic (is tue)
# if yes create calendar_day
# + 1.day

# 
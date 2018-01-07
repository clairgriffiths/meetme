class CalendarDay < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :day

end

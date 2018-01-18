namespace :days do
  desc "creates the next month's dates"
  task create_days: :environment do
    # Consider how to deal with a clean db (no last Day)

    public

    def weekend?
      if self.saturday? || self.sunday?
        true
      else
        false
      end
    end

    def weekday?
      if self.weekend? == false
        true
      else
        false
      end
    end


    first = (Day.last.date + 1.day).to_date
    last = first + 4.weeks
    (first..last).to_a.each do |d|

     Day.create(date: d,
              year: d.strftime('%Y'),
              month: d.strftime('%b'),
              day: d.strftime('%d'),
              day_name: d.strftime('%a'),
              weekend: d.weekend?,
              weekday: d.weekday?
              )
    end

    # Error handling
    # Print success message

  end
end

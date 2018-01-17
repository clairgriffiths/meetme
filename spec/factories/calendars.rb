FactoryBot.define do
  factory :calendar do
    start_date Date.new(2018, 1, 8)
    end_date  Date.new(2018, 1, 14)
    days_of_week ["1"]
  end
end
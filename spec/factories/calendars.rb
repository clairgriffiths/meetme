FactoryBot.define do
  factory :calendar do
    start_date Date.new(2018, 1, 8)

    trait :one_week_monday do
      end_date  Date.new(2018, 1, 14)
      days_of_week ["1"]
    end

    trait :two_week_friday do
      end_date  Date.new(2018, 1, 21)
      days_of_week ["5"]
    end

    trait :two_week_monday_friday do
      end_date  Date.new(2018, 1, 21)
      days_of_week ["1","5"]
    end

  end
end
FactoryBot.define do
  factory :day do
    year "2018"
    month "January"
    trait :first_monday do
      date Date.new(2018, 1, 8)
      day "Monday"
    end

    trait :second_monday do
      date Date.new(2018, 1, 15)
      day "Monday"
    end

    trait :first_friday do
      date Date.new(2018, 1, 12)
      day "Friday"
    end

    trait :second_friday do
      date Date.new(2018, 1, 19)
      day "Friday"
    end
  end
end


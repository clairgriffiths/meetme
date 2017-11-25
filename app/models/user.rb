class User < ApplicationRecord
  has_many :availabilities
  has_many :days, through: :availabilities
end

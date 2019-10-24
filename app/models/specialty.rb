class Specialty < ApplicationRecord
  has_many :specialists
  has_many :doctors, through: :specialists
end

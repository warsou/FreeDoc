class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  
  has_many :specialists
  has_many :specialties, through: :specialists

  belongs_to :city
end

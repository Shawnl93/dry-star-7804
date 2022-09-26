class Patient < ApplicationRecord
  has_many :drpatients
  has_many :doctors, through: :drpatients
end

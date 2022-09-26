class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :drpatients
  has_many :patients, through: :drpatients
end

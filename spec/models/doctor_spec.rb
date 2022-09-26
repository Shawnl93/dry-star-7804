require 'rails_helper'

RSpec.describe Doctor do
  it {should belong_to(:hospital)}
  it {should have_many(:drpatients)}
  it {should have_many(:patients).through(:drpatients)}
end

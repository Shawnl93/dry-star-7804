require 'rails_helper'

RSpec.describe Drpatient do
  it {should belong_to(:doctor)}
  it {should belong_to(:patient)}
end

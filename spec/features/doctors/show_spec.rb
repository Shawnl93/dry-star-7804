require "rails_helper"

RSpec.describe 'doctors show page' do
  before :each do
    @doctor_1 = Doctor.create!(name: "Shawn", specialty: "Heart", university: "Turing" )
  end

  it "See all of doctors info: name, specialty, uni where they got their doctorate" do

  end
end

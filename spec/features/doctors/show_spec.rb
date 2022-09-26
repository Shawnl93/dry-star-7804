require "rails_helper"

RSpec.describe 'doctors show page' do
  before :each do
    @doctor_1 = Doctor.create!(name: "Shawn", specialty: "Heart", university: "Turing" )
  end

  it "See all of doctors info: name, specialty, uni where they got their doctorate" do
    visit "/doctors/#{@doctor_1.id}"

    expect(page).to have_content("Name: #{@doctor_1.name}")
    expect(page).to have_content("Specialty: #{@doctor_1.specialty}")
    expect(page).to have_content("University: #{@doctor_1.university}")
  end
end

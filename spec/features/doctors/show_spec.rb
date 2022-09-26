require "rails_helper"

RSpec.describe 'doctors show page' do
  before :each do
    @hospital_1 = Hospital.create!(name: "Lee Hospital")
    @shawn = @hospital_1.doctors.create!(name: "Shawn", specialty: "Heart", university: "Turing" )
    @johndoe = Patient.create!(name: "John Doe", age: 99)
    @janedoe = Patient.create!(name: "Jane Doe", age: 98)

    Drpatient.create!(doctor: @shawn, patient: @johndoe)
    @drpatient_1 = Drpatient.create!(doctor: @shawn, patient: @janedoe)
  end

  it "See all of doctors info: name, specialty, uni where they got their doctorate" do
    visit "/doctors/#{@shawn.id}"

    expect(page).to have_content("Name: #{@shawn.name}")
    expect(page).to have_content("Specialty: #{@shawn.specialty}")
    expect(page).to have_content("University: #{@shawn.university}")
  end

  it "shows name of the hospital where this doctor works" do
    visit "/doctors/#{@shawn.id}"
    expect(page).to have_content("Hospital: #{@hospital_1.name}")
  end

  it "shows name of all the patients this doctor has" do
    visit "/doctors/#{@shawn.id}"

    expect(page).to have_content("Current Patients:")
    expect(page).to have_content(@johndoe.name)
    expect(page).to have_content(@janedoe.name)
  end

  it "next to each patient theres a button to remove from doctor" do
    visit "/doctors/#{@shawn.id}"
    
    expect(page).to have_content(@drpatient_1.patient.name)
    expect(page).to have_button("Remove #{@drpatient_1.patient.name}")
    click_on ("Remove #{@drpatient_1.patient.name}")
    expect(current_path).to eq("/doctors/#{@shawn.id}")
    expect(page).to_not have_content(@janedoe.name)
  end
end

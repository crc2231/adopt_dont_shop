require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters" do
    shelter_1 = Shelter.create(name:       "New Hope Rescue",
                              address:     "208 Main St",
                              city:        "Denver",
                              state:       "CO",
                              zip:         "80329")

    shelter_2 = Shelter.create(name:       "Dumb Friends League",
                              address:     "123 Alameda St",
                              city:        "Aurora",
                              state:       "NM",
                              zip:         "43252")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    # expect(page).to have_content(shelter_1.address)
    # expect(page).to have_content(shelter_1.city)
    # expect(page).to have_content(shelter_1.state)
    # expect(page).to have_content(shelter_1.zip)
    expect(page).to have_content(shelter_2.name)
    # expect(page).to have_content(shelter_2.address)
    # expect(page).to have_content(shelter_2.city)
    # expect(page).to have_content(shelter_2.state)
    # expect(page).to have_content(shelter_2.zip)
  end
end

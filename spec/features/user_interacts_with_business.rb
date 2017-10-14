require 'spec_helper'

feature 'user interacts with business' do
  scenario 'adds a business and reviews a different business' do
    sign_in
    visit new_business_path
    expect(page).to have_content "Add a business"

    fill_in "Business name", with: "My Business"
    fill_in "City", with: "City"
    fill_in "State", with: "State"

    click_button "Submit"

    expect(page).to have_content "Business added"
    expect(page).to have_content "My Business"
  end
end

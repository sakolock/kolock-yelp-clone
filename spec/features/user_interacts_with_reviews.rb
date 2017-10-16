require 'spec_helper'

feature 'user interacts with reviews' do
  scenario 'when signed in' do
    sign_in
    business = Fabricate(:business)
    visit home_path
    click_link business.name

    fill_in 'Review Title', with: 'Great place!'
    fill_in 'Review', with: 'This place was phenomenal'

    click_button 'Add Review'

    expect(page).to have_content 'Great place!'
    expect(page).to have_content 'This place was phenomenal'
  end

  scenario 'when not signed in' do
    business = Fabricate(:business)
    visit home_path
    click_link business.name

    expect(page).to have_content business.name
    expect(page).not_to have_content 'Review Title'
    expect(page).not_to have_content 'Add Review'
  end
end

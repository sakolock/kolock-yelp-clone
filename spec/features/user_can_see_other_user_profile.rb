require 'spec_helper'

feature 'user interacts with user profiles' do
  scenario 'views other user profiles without being signed in' do
    business = Fabricate(:business)
    alice = Fabricate(:user)
    review = Fabricate(:review, user: alice, business: business)

    visit businesses_path
    click_link business.name

    click_link alice.full_name
    expect(page).to have_content "#{alice.full_name}\'s Profile"
    expect(page).to have_link business.name
  end
end

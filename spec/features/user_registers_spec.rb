require 'spec_helper'

feature 'user registers' do
  scenario 'with unique email and valid fields' do
    visit register_path
    fill_in "Email Address", with: Faker::Internet.email
    fill_in "Password", with: 'password'
    fill_in "Full Name", with: Faker::Name.name
    click_button "Register"
    expect(page).to have_content 'Registration successful!'
  end
end

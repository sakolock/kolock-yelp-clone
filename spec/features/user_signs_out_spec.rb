require 'spec_helper'

feature 'user signs out' do
  scenario 'when user is signed in' do
    sign_in
    visit sign_out_path
    expect(page).to have_content "Login"
  end
end

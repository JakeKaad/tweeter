require 'rails_helper'

feature 'registers a new user' do
  scenario 'it navigates to the register page' do
    visit '/'
    click_link 'Register'
    expect(page).to have_content("Sign up")
  end

  scenario 'it creates a new user' do
    visit '/'
    click_link 'Register'
    fill_in 'Email', with: "test@test.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    expect(page).to have_content("Welcome!")
  end
end


#save_and_open_page opens the page using the 'launchy' gem
#Click on: buttons

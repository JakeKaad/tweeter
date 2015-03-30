require 'rails_helper'

feature 'registers a new user' do
  scenario 'it navigates to the register page' do
    visit '/'
    click_link 'Register'
    expect(page).to have_content("Sign up")
  end

  scenario 'it creates a new user' do
    create_new_user
    expect(page).to have_content("Welcome!")
  end
end

feature 'logs a user out and in' do
  scenario 'navbar links are hidden based on session status' do
    create_new_user
    expect(page).to_not have_content("Register")

    click_link 'Sign out'
    expect(page).to_not have_content("Sign out")
    expect(page).to have_content("Signed out successfully.")

    click_link 'Sign in'
    expect(page).to have_content("Log in")
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "password"
    click_on "Log in"
    expect(page).to have_content("Signed in successfully.")
    expect(page).to_not have_content "Sign in"
  end
end

def create_new_user
  visit '/'
  click_link 'Register'
  fill_in 'Email', with: "test@test.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_on "Sign up"
end
#save_and_open_page opens the page using the 'launchy' gem
#Click on: buttons

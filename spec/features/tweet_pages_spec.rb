require 'rails_helper'

feature 'index page' do
  context 'with an authenticated user' do
    scenario 'shows new tweet form' do
      create_new_user
      visit '/'
      expect(page).to have_content "New tweet"
    end

    scenario 'creates a new tweet' do
      create_new_user
      visit '/'
      fill_in "New tweet", with: "Something"
      click_on "new_tweet"
      expect(page).to have_content "Something"
    end
  end

  context 'with an unauthenticated user' do
    scenario "doesn't show a new tweet form" do
      visit '/'
      expect(page).to_not have_content "New tweet"
    end
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

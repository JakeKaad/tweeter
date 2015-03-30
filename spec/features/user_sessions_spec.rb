require 'rails_helper'

feature 'registers a new user' do
  scenario 'a new user is created and logged in' do
    visit '/'
    click_link 'Register'
  end
end

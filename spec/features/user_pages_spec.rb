require 'rails_helper'


feature "user show page" do
  let(:user) { FactoryGirl.create(:user) }

  scenario "shows a user's tweets" do
    tweet = FactoryGirl.create(:tweet, user_id: user.id)
    tweet_two = FactoryGirl.create(:tweet, user_id: user.id)
    tweet_three = FactoryGirl.create(:tweet, user_id: user.id)
    visit user_path(user)
    expect(page).to have_content "tweet 3"
  end

  
end

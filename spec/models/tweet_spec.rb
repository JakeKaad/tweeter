require 'rails_helper'

describe Tweet do
  it { should belong_to :user }
  it { should validate_length_of(:content).is_at_most(56) }

  describe 'default scope' do
    let(:tweet_one) { FactoryGirl.create(:tweet, created_at: 3.days.ago) }
    let(:tweet_two) { FactoryGirl.create(:tweet, created_at: 2.days.ago) }

    it "should be in DESC order by created_at" do
      expect(Tweet.all).to eq([tweet_two, tweet_one])
    end
  end
end

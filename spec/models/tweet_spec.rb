require 'rails_helper'

describe Tweet do
  it { should belong_to :user }
  it { should validate_length_of(:content).is_at_most(56) }
end

class Tweet < ActiveRecord::Base

  belongs_to :user

  validates_length_of :content, maximum: 56
  default_scope { order("created_at DESC") }

end

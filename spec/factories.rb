FactoryGirl.define do
  factory :tweet do
    sequence :content do |n|
      "tweet #{n} "
    end
  end

  factory :user do
    email 'a@a.com'
    password 'somereallyhardpassword'
  end
end

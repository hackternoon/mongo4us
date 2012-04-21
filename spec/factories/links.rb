# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    href "MyString"
    tag1 "MyString"
    tag2 "MyString"
    tag3 "MyString"
    user_id 1
  end
end

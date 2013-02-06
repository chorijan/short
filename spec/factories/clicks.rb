# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :click do
    url_id 1
    referrer "MyString"
    user_agent "MyString"
    ip_address "MyString"
  end
end

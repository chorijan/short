# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :url do
    site_id 1
    long "MyString"
    short "MyString"
  end
end

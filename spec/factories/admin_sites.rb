# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_site, :class => 'Admin::Site' do
    name "MyString"
    uuid "MyString"
    domain "MyString"
  end
end

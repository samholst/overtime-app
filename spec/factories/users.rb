FactoryGirl.define do
  # Devise gave us a duplicate email error when running tests
  # Solution is found below
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end
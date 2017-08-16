@normal = User.create!(first_name: "Sam", last_name: "Holst", email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

@admin = User.create!(first_name: "Sam", last_name: "Holst", email: "admintest@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", type: "AdminUser")

puts "1 user created"

10.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!", user_id: @normal.id)
end

puts "10 posts have been created"

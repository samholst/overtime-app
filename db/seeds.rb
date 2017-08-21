@normal = User.create!(first_name: "Sam",
                       last_name: "Holst",
                       email: "test@test.com",
                       password: "asdfasdf",
                       password_confirmation: "asdfasdf",
                       phone: "7025000195")

puts "1 user created"

@admin = AdminUser.create!(first_name: "Sam",
                           last_name: "Holst",
                           email: "admintest@test.com",
                           password: "asdfasdf",
                           password_confirmation: "asdfasdf",
                           phone: "7025000195")

puts "1 admin created"


10.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!", user_id: @normal.id, overtime_request: 2.5)
end

puts "10 posts have been created"

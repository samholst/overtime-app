1.times do |user|
  User.create!(first_name: "Sam", last_name: "Holst", email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
end

10.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!", user_id: User.first)
end

puts "10 posts have been created"

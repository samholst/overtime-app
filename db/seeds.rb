1.times do |user|
  User.create!(first_name: "Sam", last_name: "Holst", email: "myemail@email.com", password: "asdfasdf", password_confirmation: "asdfasdf")
end

100.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!", user: User.first)
end

puts "100 posts have been created"

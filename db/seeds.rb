100.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!")
end

puts "100 posts have been created"

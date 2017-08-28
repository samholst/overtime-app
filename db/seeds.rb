@normal = User.create!(first_name: "Sam",
                       last_name: "Holst",
                       email: "test@test.com",
                       password: "asdfasdf",
                       password_confirmation: "asdfasdf",
                       phone: "7025000195")

puts "1 user created"

@admin = AdminUser.create!(first_name: "Sam",
                           last_name: "Admin",
                           email: "admintest@test.com",
                           password: "asdfasdf",
                           password_confirmation: "asdfasdf",
                           phone: "7025000195")

puts "1 admin created"

50.times do |post|
  Post.create!(date: Date.today, rationale: "Day #{post}, I worked way too long! Pay me!", user_id: @normal.id, overtime_request: 2.5)
end

puts "50 posts have been created"

AuditLog.create!(user_id: @normal.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @normal.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @normal.id, status: 0, start_date: (Date.today - 20.days))

puts "50 audit logs have been created"

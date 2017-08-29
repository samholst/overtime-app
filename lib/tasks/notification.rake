namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime if needed"
    task sms: :environment do
        # 1. Schedule to run at Sunday at 5pm
        # 2. Iterate over all employees
        # 3. Skip AdminUsers
        # 4. Send a message that has instructions and a link to log time
        # number: "555-555-3323"
        # number: "5555553323"
        # No spaces or dashes
        # exactly 10 characters
        # all characters have to be a number
        if Time.now.sunday?
          employees = Employee.all
          website_url = "https://samwholst-overtime-app.herokuapp.com"
          notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: #{website_url}"

          employees.each do |employee|
            AuditLog.create!(user_id: employee.id)
            SmsTool.send_sms(number: employee.phone, message: notification_message)
          end
        end
    end

  desc "Sends mail notificaiton to managers (admin users) each day to inform of pending overtime requests"
    task manager_mailer: :environment do
      # 1. Iterate over the overtime requests that have a status of "submitted".
      # 2. Check to see if there are any requests
      # 3. Iterate over the list of admin users/managers
      # 4. Send email to each admin

      submitted_posts = Post.submitted
      admin_users = AdminUser.all

      if submitted_posts.count > 0
        admin_users.each do |admin|
          ManagerMailer.email(admin).deliver_later
        end
      end
    end
end

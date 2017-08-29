# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- Auditlog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users for dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Need to update end_date when confirmed
- Need to update audit log status when an overtime rejected
- x Home Icon
- Update buttons to be mobile responsive
- Update date time span
- Update button sort order on employee homepage
- Remove unnecessary nav bar items for managers
- fix admin dashboard error
- Implement HoneyBadger error reporting
- Implement new Relic for keeping the site alive
- Check on data issue and verify correct hours are being tracked (30 hours was 3.0)

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## Refactor TODOS:
- x Refactor user association in post_spec
- x Add full_name method for users
- Refactor posts/form for admin user list status
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rb:52 to have correct user reference and not require update
- Integrate validation for phone attribute in user

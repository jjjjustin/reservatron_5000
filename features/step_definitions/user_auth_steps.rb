Given(/^I am not logged in$/) do
  # not logged in
end


Given(/^I have a valid account$/) do
  User.create!(first_name: 'user', last_name: 'user', email: 'user@example.com', password: 'password')
end

Given(/^I am logged in$/) do
  # logged in
end

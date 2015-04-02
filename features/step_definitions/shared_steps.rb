When(/^I visit "(.*?)"$/) do |desired_page|
  visit(desired_page)
end

When(/^I type "(.*?)" into "(.*?)"$/) do |text, field|
  fill_in field, with: text
end

When(/^I visit '\/users\/sign_in'$/) do

end

When(/^I click button "(.*?)"$/) do |target|
  click_button(target)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end




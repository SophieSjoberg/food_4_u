Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("{string} is visible") do |selector|
  expect(page).to have_selector :css, "#navigationBar"
  expect(page).to have_selector :css, "#footer"
end

Then("I click on {string} link") do |link|
  click_link_or_button link
end

Then("I will be redirected to landing page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("{string} is present") do |selector|
  expect(page).to have_selector :css, "#navigationBar"
  expect(page).to have_selector :css, "#footer"
end

Then("I would like to see a {string} link") do |link|
  find_link link
end

Then("I would like to click on {string} link") do |link|
  click_link_or_button link
end

Then("I would like to be redirected to landing page") do
  visit root_path
end

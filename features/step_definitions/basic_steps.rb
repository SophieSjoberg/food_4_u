Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("{string} should be present") do |selector|
  expect(page).to have_selector :css, "#navigationBar"
  expect(page).to have_selector :css, "#footer"
end

Then("I would like to see a {string} link") do |link|
  find_link link
end

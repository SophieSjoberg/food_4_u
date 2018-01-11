Given("I am on the landing page") do
  visit root_path
end

Then("I should see a footer") do
  expect(page).to have_content
end

Then("I should see a navbar") do
  expect(page).to have_content
end

Then("I would like to see a {string} button") do |button|
  find_link_or_button
end

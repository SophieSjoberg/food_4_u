Then("I should see {string}") do |content|
  expect(page).to have_content content
end

# Then("I should see selector {string}") do |selector|
#   expect(page).to have_selector('footer', visible: true)
#   expect(page).to have_selector('navbar', visible: true)
# end

Then("the {string} should be present") do |element|
  expect(element).to be_present? element
end

Then("I would like to see a {string} button") do |button|
  find_link_or_button
end

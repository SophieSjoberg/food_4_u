When("I click {string} button") do |element|
  click_button element
  sleep (2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end


Then("I fill in stripe form field {string} with {string}") do |field_name, value|
  fill_in field, with: value
end

Then("I submit the stripe form") do
  
end

Given("the following dishes exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:dish, hash)
  end
end

Given("I click {string} on {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("there should be an order created for me") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the order should contain {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

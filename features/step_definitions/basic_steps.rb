Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("the following menus exist") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:menu, hash)
  end
end

Then("show me the page") do
  save_and_open_page
end

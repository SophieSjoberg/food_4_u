seed_file = Rails.root.join('db', 'seeds', 'restaurants.yml')
config = YAML::load_file(seed_file)
Restaurant.create!(config) do |c|
  puts "Create restaurant with name: #{c.name}"
end

seed_file = Rails.root.join('db', 'seeds', 'menus.yml')
config = YAML::load_file(seed_file)
counter = 0
while counter < Restaurant.all.count
  Restaurant.all[counter].menus.create!(config) do |c|
    puts "Create menu with name: #{c.name}"
  end
  counter += 1
end

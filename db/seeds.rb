seed_file = Rails.root.join('db', 'seeds', 'restaurants.yml')
config = YAML::load_file(seed_file)
counter = 0
Restaurant.create!(config) do |c|
  puts "Create restaurant #{counter += 1} with name: #{c.name}"
end

seed_file = Rails.root.join('db', 'seeds', 'menus.yml')
config = YAML::load_file(seed_file)
counter = 0
counter2 = 0

while counter2 < Restaurant.all.count
  Restaurant.all[counter2].menus.create!(config) do |c|
    puts "Create menu #{counter += 1} with name: #{c.name}"
  end
  counter2 += 1
end

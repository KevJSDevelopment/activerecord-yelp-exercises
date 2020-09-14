require 'pry'
require 'faker'

restaurant_names = ["Taco Bell", "KFC", "Popeyes", "McDonalds", "Arby's", "Chik-fil-a", "Wendy's", "Wing-Stop", "Panera", "Jersey Mike's",
"Potbelly's", "Chipotle", "PizzaHut", "Dominos", "Papa Johns", "Cava", "Mezze", "&Pizza", "Grillmarx", "Subway"]


# restaurant_names.each do |name|
#     Restaurant.create({name: name})
# end

# iterator = 0
# while iterator < 10 do
#     p Faker::Food.unique.dish
#     iterator += 1
# end

# Restaurant.find_each do |restaurant|
#     iterator = 0
#     while iterator < 10 do
#         Dish.create({name: "#{Faker::Food.dish}#{restaurant[:id]}", restaurant_id: restaurant[:id]})
#         iterator += 1
#     end
# end

# Dish.find_each do |dish|
#     iterator = 0
#     while iterator < 3 do
#         Tag.create({name: Faker::Restaurant.type})
#         iterator += 1
#     end
# end
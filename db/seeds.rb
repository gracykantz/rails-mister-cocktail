require 'open-uri'
require 'json'
Ingredient.destroy_all
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
ingredients = JSON.parse(json)["drinks"]
ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

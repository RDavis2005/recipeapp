def add
    print "title: "
    title = gets.chomp
    
    print "description: "
    description = gets.chomp
    
    print "ingredients: "
    ingredients = gets.chomp
    
    print "directions: "
    directions = gets.chomp
    
    print "prep_time: "
    prep_time = gets.chomp
    
    print "cook_time: "
    cook_time = gets.chomp
    
    print "servings: "
    servings = gets.chomp
    
    print "amount: "
    amount = gets.chomp
    
    recipe = Recipe.new
    recipe.title = title
    recipe.description = description
    recipe.ingredients = ingredients
    recipe.directions = directions
    recipe.prep_time = prep_time
    recipe.cook_time = cook_time
    recipe.servings = servings
    recipe.amount = amount
    
    recipe.save
end

def search
    print "title: "
    title = gets.chomp
    
    recipe = Recipe.find_by({:title => title})
    
    if recipe == nil
        puts "Recipe not found"
    else
        puts "Title: #{recipe.title}"
        puts "Description: #{recipe.description}"
        puts "Ingredients: #{recipe.ingredients}"
        puts "Directions: #{recipe.directions}"
        puts "Prep Time: #{recipe.prep_time}"
        puts "Cook Time: #{recipe.cook_time}"
        puts "Servings: #{recipe.servings}"
        puts "Yield: #{recipe.amount}"
    end
end

puts "Welcome to My Recipe App"

puts "1) add a recipe" 
puts "2) search a recipe"
puts ""
print ">"

option = gets.chomp

if option == '1'
    puts "Add a recipe"
    add
elsif option == '2' 
    puts "Search a recipe"
    search
else
    puts "Wrong option"
end
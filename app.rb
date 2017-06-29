def add
    info = {}
    
    print "title: "
    info['title'] = gets.chomp
    
    print "description: "
    info['description'] = gets.chomp
    
    print "ingredients: "
    info['ingredients'] = gets.chomp
    
    print "directions: "
    info['directions'] = gets.chomp
    
    print "prep_time: "
    info['prep_time'] = gets.chomp
    
    print "cook_time: "
    info['cook_time'] = gets.chomp
    
    print "servings: "
    info['servings'] = gets.chomp
    
    print "amount: "
    info['amount'] = gets.chomp
    
    recipe = Recipe.new(info)
    recipe.save
end

def search
    print "title: "
    title = gets.chomp
    
    recipes = Recipe.where("title like ?", "%#{title}%")
    
    if recipes.length == 0
        puts "Recipe not found"
    else
        recipes.each do |recipe|
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
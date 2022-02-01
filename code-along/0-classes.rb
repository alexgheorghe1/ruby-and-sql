# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

brain_favorite_food = "tacos"
#alt way to do the above: brian_favorite_food = string.new("tacos")
bens_favorite_food = "sushi"

puts brain_favorite_food.upcase
puts bens_favorite_food.upcase

# String Class

# String Methods

class Dog
    def speak #define methods of class
        puts "Woof"
    end
end

Jenkins = Dog.new # .new exists within every class, the way to create a new instance
Jenkins.speak
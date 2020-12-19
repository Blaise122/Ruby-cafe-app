require 'tty-prompt'
require_relative 'cafe_info'
require_relative 'menu_item'
require_relative 'menu'
require_relative 'user'
require_relative 'order'
require_relative 'feedback'
require_relative 'headers'


# Welcome message
clear
welcome(Core)

# Enter Cat guest details
puts "\n    Hello There! \n\n"
puts "Please enter your name: \n\n"

# Creating a loop to make sure the user types in something. This exits out of the loop if the user does not type anything in after 3 tries. 
 
user_name_count = 0
while user_name_count < 3
    user_name = gets.chomp.capitalize

    # exits the loop if the user types in a name
    if user_name != "" 
        clear
        break

    # continues the loop until the user types in a name, or until the user_name_count is greater than 3. 
    else
        user_name_count += 1
        if user_name_count == 3
            clear
            puts "\n\n 👀👀👀.."
            user_name = "coconut head 1"
        else
            puts "Ooops, please enter your name:"
        end
    end
end

# Creates a new user object, and reaffirms to the user their input with a greeting. 
user = User.new(cat_name)
puts "\n\n You Are Awesome #{user.name}!"

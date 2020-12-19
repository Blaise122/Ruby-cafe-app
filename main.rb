require 'tty-prompt'
require_relative 'cafe_info'
require_relative 'menu_item'
require_relative 'menu'
require_relative 'user'
require_relative 'cafe'
require_relative 'order'
require_relative 'feedback'
require_relative 'headers'


# Welcome message
clear
welcome

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
user = User.new(user_name)
puts "\n\n You Are Awesome #{user.name}!"

# Main Application Loop 
while true
    
    # Display cafe menu options using TTY-Prompt gem
    welcome
    selection = TTY::Prompt.new.select("How may we assist you today? Please select from the following options:",  cycle: true, marker: '>', echo: false) do |menu|
        menu.choice('Show Menu', 1)
        menu.choice('View Cafe Information', 2)
        menu.choice('Provide Feedback', 3)
        menu.choice('Exit', 4)

        case selection

        # 1. Make a new booking
        when 1    
            # create an instance of cafe
            menu = {"Latte" => 6.20, "Tea" => 5.00, "Espresso" => 5.00, "Cappuccino" => 5.00, "Flat White" => 5.00, "Hot Chocolate" => 4.20, "Iced Mocha" => 4.00, "Iced Latte" => 4.00, "Iced Chocolate" => 4.00, "Bananna Bread" => 3.60, "Belgian Waffles" => 7.00, "Chessy Garlic Bread" => 4.20, "Calamari Rings" => 4.20,"Beef Burger" => 9.20,"B.L.T & Egg Sandwich" => 5.20}
            cafe = Cafe.new(menu)

            welcome

            loop do
                cafe.print_menu
                puts
                puts "what would you like to order?\n When you are finished, type 'done'."
                input = gets.strip.downcase

                # if 'done', break loop
                if (input == 'done')
                    break
                end

                # check for valid menu item
                item = cafe.menu.validate_item(input)
                if (item)
                    puts "How many would you like?"
                    quantity = gets.to_i
                    if (quantity > 0)
                        cafe.add_to_order(item, quantity)
                    end
                end
            end
            # print the order 
            cafe.print_order
            back_main_menu
        

        # View about the hotel and contact information
        when 2

            clear
            Cafee.cafe_info
            back_main_menu

        # providng feedback
        when 3



        # Exit
        when 4
            clear
            puts "Thank you #{user_name}"
            puts "We hope you will visit us soon!"
            puts "Have a perfect day"
            return
        end
    end
end



require 'tty-prompt'
# require_relative './cafe_info'
require_relative './menu'
require_relative './user'
require_relative './cafe'
require_relative './order'
# require_relative './feedback'
require_relative './headers'

# Create a hotel and rooms
# cafeinfo = CafeInfo.new.add_item(User.new)

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
puts "\n\n Welcome #{user.name}!"

opt = "1"
# Main Application Loop 
while opt != "4"
    welcome
    # Creates a new user object, and reaffirms to the user their input with a greeting. 
    user = User.new(user_name)
    puts "\n\n Welcome #{user.name}!"
    puts
    puts "1. Show Menu"
    puts "2. View Cafe Information"
    puts "3. Provide Feedback"
    puts "4. Exit"
    print "Please select from options (1-4)"
    opt = gets.chomp

    case opt
        # 1. Make a new booking
        when "1"    
            # create an instance of cafe
            menu = {"latte" => 6.20, "tea" => 5.00, "espresso" => 5.00, "cappuccino" => 5.00, "flat white" => 5.00}
            cafe = Cafe.new("Core 🌳",menu)

            welcome
            loop do
                cafe.print_menu
                puts
                puts "what would you like to order?\nWhen you are finished, type 'done'."
                input = gets.strip.downcase

                # if 'done', break loop
                if (input === 'done')
                    break
                end

                # check for valid menu item
                puts "DEBUG======: got input: #{input}"
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
            
        # View about the hotel and contact information
        when "2"
            puts HEADER_LINE
            puts " Cafe Information 🌳".center(HEADER_LENGTH)
            puts HEADER_LINE
            puts
            puts "Address: 7 Blaise rd, Brisbane QLD 4000\nPhone: 1800 123\nEmail: woo_core@bestin.com"
            puts
            puts "MON - FRI: 09:00 - 22:00\nSAT: 10:00 - 22:00\nSUN: 12:00 - 22:00"
            puts
            puts HEADER_LINE
            puts
            puts "~ Its all about the VIBES ~ \n And at CORE we specialise in good vibes. \n we are so good you'll keep coming back! \n\n\nCore Café, situated in the heart of Brisbane, serves authentic, pure food made from locally sourced quality produce.\nIt’s not without reason that Core Café has won awards!\n Healthy food, locally sourced ingredients, seasons, sustainability and quality are the terms that describe Core Café."
            puts 
            puts HEADER_LINE

        # providng feedback
        when "3"

            clear
            puts HEADER_LINE
            puts "Feedback 🌳".upcase.center(HEADER_LENGTH)
            puts HEADER_LINE
            puts
            puts "please with the options provided 🙏🏾"
            puts
            puts "How likely is it that you would come back?\n(a)Very Likely\n(b)Likely\n(c)Unlikely\n(d)Very Unlikely"
            answer_1 = gets.chomp
            puts "How Often Do You Dine with Us?\n(a)First-time customer\n(b)Infrequent diner\n(c)frequent client"
            answer_2 = gets.chomp
            puts "Did your food arrive within 30 minutes of placing your order?\n(a)Yes\n(b)No"
            answer_3 = gets.chomp
            puts "How did you feel about the speed of service?\n(a)Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
            answer_4 = gets.chomp
            puts "How would you rate the overall experience?\n(a) Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
            answer_5 = gets.chomp
            puts "What types of coffees do you typicall order at the cafe?\n(a)Latte\n(b)Espresso\n(c)Cappuccino\n(d)Flat White"
            answer_6 = gets.chomp
            puts "In addition to coffee, what food would you prefer to order?\n(a)Muffins\n(b)Panini/Sandwich\n(c)Doughnuts\n(d)Cake/Cookies"
            answer_7 = gets.chomp
            puts "Thank you for your Feedback #{user_name}"
        # Exit
        when "4"
            clear
            puts "Thank you #{user_name}"
            puts "We hope you will visit us soon!"
            puts "Have a Great day"
        else
        puts "Invalid option"
    end
    # puts "Please Enter key to continue.."
    # gets
    # clear
end



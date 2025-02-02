require 'tty-prompt'
require_relative './menu'
require_relative './user'
require_relative './cafe'
require_relative './order'
require_relative './headers'


# Welcome message
clear
welcome

puts "\n   Hello There! \n\n"
puts "Please enter your name: \n\n"

    if ARGV.length > 0 
        user_name = ARGV[0]
    else
        user_name = gets.chomp
    end

# Creates a new user object, and reaffirms to the user their input with a greeting. 
user = User.new(user_name)
puts "\n\n Welcome #{user.name}!"

opt = " "
# Main Application Loop 
while opt != "5"
    welcome
    # Creates a new user object, and reaffirms to the user their input with a greeting. 
    user = User.new(user_name)
    puts "\n\n Welcome #{user.name}!"
    puts
    puts "1. Show Menu"
    puts "2. View Cafe Information"
    puts "3. Provide Feedback"
    puts "4. Play a game while you wait"
    puts "5. Exit"
    print "Please select from options (1-5): "
    opt = STDIN.gets.chomp
    system "clear"

    case opt
        # 1. Make a new booking
        when "1"    
            # create an instance of cafe
            menu = {"latte" => 6.20, "tea" => 5.00, "espresso" => 5.00, "cappuccino" => 5.00, "flat white" => 5.00}
            cafe = Cafe.new("Core 🌳", menu)

            welcome
            loop do
                cafe.print_menu
                puts
                puts "what would you like to order?\nWhen you are finished, type 'done'."
                input = STDIN.gets.strip.downcase

                # if 'done', break loop
                if (input === 'done')
                    break
                end

                # check for valid menu item
                # puts "DEBUG======: got input: #{input}"
                item = cafe.menu.validate_item(input)
                if (item)
                    puts "How many would you like?"
                    quantity = STDIN.gets.to_i
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
            puts "Hotel Info 🌳".upcase.center(HEADER_LENGTH)
            puts HEADER_LINE
            puts
            puts "Address: Laneway Basement, 181 George St, Brisbane City QLD 4000"
            puts "Phone No: 0456 183 458"
            puts "Email: core.brizzy@gmail.com"
            puts
            puts "Mon-Fri: 9am-6pm"
            puts "Sat-Sun: 10am-3pm"
            puts HEADER_LINE
            puts
            puts "Tucked away in one of Brisbane’s ever evolving alleyways, is Core – an underground, laneway specialty coffee house + bar.\nOur ‘Melbournesque’ venue is eclectic, warm (v cool in the Brissy summer though!) and inviting.\nThe coffee & beer is boutique and artisan – using amazing beans brewed by trained baristas and local craft beers, Core offers no attitude, no complex coffee lexicon, just great coffee brewed with skill, love and a friendly smile."
            puts
            puts "A surprisingly quiet setting (except on Friday evenings!!) just a few metres off busy George St, Core is the perfect place to escape for a coffee, craft beer, unique small batch wine or a sexy cocktail.\nWe offer lunch and dinner and have free wifi too. Come on down to get some much needed time to chill and escape, get some work done, meet up with friends or just relax and enjoy the great coffee, craft beverages, a selection of snacks and board games."
            puts
            puts HEADER_LINE
        # providng feedback
        when "3"
            puts HEADER_LINE
            puts "Feedback 🌳".upcase.center(HEADER_LENGTH)
            puts HEADER_LINE
            puts
            puts "Please Answer With The Options Provided 🙏🏾"
            puts
            puts "How likely is it that you would come back?\n(a)Very Likely\n(b)Likely\n(c)Unlikely\n(d)Very Unlikely"
            answer_1 = STDIN.gets.chomp
            puts "How Often Do You Dine with Us?\n(a)First-time customer\n(b)Infrequent diner\n(c)frequent client"
            answer_2 = STDIN.gets.chomp
            puts "Did your food arrive within 30 minutes of placing your order?\n(a)Yes\n(b)No"
            answer_3 = STDIN.gets.chomp
            puts "How did you feel about the speed of service?\n(a)Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
            answer_4 = STDIN.gets.chomp
            puts "How would you rate the overall experience?\n(a) Excellent\n(b)Good\n(c)Average\n(d)Dissatisfied"
            answer_5 = STDIN.gets.chomp
            puts "What types of coffees do you typicall order at the cafe?\n(a)Latte\n(b)Espresso\n(c)Cappuccino\n(d)Flat White"
            answer_6 = STDIN.gets.chomp
            puts "In addition to coffee, what food would you prefer to order?\n(a)Muffins\n(b)Panini/Sandwich\n(c)Doughnuts\n(d)Cake/Cookies"
            answer_7 = STDIN.gets.chomp
            puts "Thank you for your Feedback #{user_name}"

        # play a game while you wait for your order    
        when "4"
            right_answer = "flat white"
            guess = ""
            guess_count = 0
            guess_limit = 3
            out_of_guess = false

            puts HEADER_LINE
            puts "Core 🌳".upcase.center(HEADER_LENGTH)
            puts HEADER_LINE
            puts
            puts "LOVE your coffee? While, how well do you know it. What is the healthiest choice from these options?\nYou get three attampts to guess correct."
            puts
            puts "BULLETPROOF COFFEE\nALMOND MILK COFFEE\nCHAI LATTE\nLONG BLACK\nPICCOLO LATTE\nSOY LATTE\nMOCHA\nFLAT WHITE\nCAPPUCCINO\nMACCHIATO\nLATTE".downcase
            puts
            while guess != right_answer and !out_of_guess
                if guess_count < guess_limit
                    puts "Enter answer: "
                    guess = STDIN.gets.chomp()
                    guess_count += 1
                else
                    out_of_guess = true
                end
            end

            if out_of_guess
                puts "Not you lucky day!"
            else
                puts "You are correct, congrats!!"
            end

        # Exit
        when "5"
            puts "Thank you #{user_name}"
            puts "We hope you will visit us soon!"
            puts "Have a Great day!"
        else
        puts "Invalid option"
    end
    puts
    puts "press Enter key to continue...."
    STDIN.gets
    system "clear"
end



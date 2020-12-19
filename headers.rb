# Some beautiful headers and useful functions for our main app

require 'tty-prompt'

# Line for the headers
HEADER_LINE = "-----------------------------------------------------------"
HEADER_LENGTH = HEADER_LINE.length

# clears the screen
def clear
    puts "\e[2J\e[f"
end

# Returns user to the main menu
def back_main_menu
    puts "\n\n Press any key to go back to the main menu"
    $stdin.getch
    clear
end

# Annoying loading screen :)  -- Having some fun with the application
def loading_screen(string)                                           
    string.length.times do |i| # Iterates over each index in a given string
        # Clear the screen to provide an animated effect.
        clear
        
        # Please wait header 
        puts HEADER_LINE
        puts "Please Wait...".upcase.center(HEADER_LENGTH)
        puts HEADER_LINE
        puts
        
        # Displays all characters in the string up to the index being iterated over.
        puts string[0, i].center(HEADER_LENGTH)
        sleep(0.2)
    end
end

# Welcome to Core
def welcome(core)
    puts
    puts HEADER_LINE
    puts "WELCOME TO ".center(HEADER_LENGTH)
    puts "#{core.name}".center(HEADER_LENGTH)
    puts HEADER_LINE
    puts
end

# header for when showing menu
def view_menu_header
    clear
    puts
    puts HEADER_LINE
    puts "Menu".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
    puts
end

# header for when making an order
def view_order_header
    clear
    puts
    puts HEADER_LINE
    puts "Please make your order".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
    puts
end

# header for when viewing order
def view_order_header
    clear
    puts
    puts HEADER_LINE
    puts "#{user_name} Order".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
end

# header for when providing feedback
def feedback_header
    clear
    puts
    puts HEADER_LINE
    puts "Feedback".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
end
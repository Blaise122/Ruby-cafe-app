# require 'tty-prompt'
# require_relative './headers'

# class CafeInfo
#     attr_reader :name

#     # We have initialized the hotel with all this data - so that the data is in one location if it needs to be modified.
#     # If in the future we were to expand to different locations, we could create Hotel subclasses, and hard-code the information in there. 
#     def initialize
#         @name = "Core 🌳"
#         @address = "7 Blaise rd, Brisbane QLD 4000"
#         @phone = "1800 123"
#         @email = "woo_core@bestin.com"
#         @mon_fri = "09:00 - 22:00 "
#         @sat = "10:00 - 22:00"
#         @sun = "12:00 - 22:00"
#         @about = "~ Its all about the VIBES ~ \n And at CORE we specialise in good vibes. \n we are so good you'll keep coming back! \n\n\n Core Café, situated in the heart of Brisbane, serves authentic, pure food made from locally sourced quality produce. It’s not without reason that Core Café has won awards!\n Healthy food, locally sourced ingredients, seasons, sustainability and quality are the terms that describe Core Café. "
#     end

#     # Displays the contact information for Core
#     def cafe_info
#         puts HEADER_LINE
#         puts "#{@name.upcase}".center(HEADER_LENGTH)
#         puts HEADER_LINE
#         puts
#         contact_info
#         puts
#         trading_info
#         puts HEADER_LINE
#         puts
#         puts "   #{@about}"
#         puts
#         puts HEADER_LINE
#     end

#     # Contact information is seperated from cafe information so that we can use this contact information in different locations if we need it
#     def contact_info
#         puts " Address: #{@address}"
#         puts " Phone No: #{@phone}"
#         puts " Email: #{@email}"
#     end

#     # Trading hours information is also seperated from cafe information so that we can use this contact information in different locations if we need it
#     def trading_info
#         puts "MON - FRI: #{@mon_fri}"
#         puts "SAT: #{@sat}"
#         puts "SUN: #{@sun}"
#    end
# end
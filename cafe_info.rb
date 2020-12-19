# require 'tty-prompt'
# require_relative '../methods/headers'

# class C
#     attr_reader :rooms, :name

#     # We have initialized the hotel with all this data - so that the data is in one location if it needs to be modified.
#     # If in the future we were to expand to different locations, we could create Hotel subclasses, and hard-code the information in there. 
#     def initialize
#         @name = "Core"
#         @address = "7 Blaise rd, Brisbane QLD 4000"
#         @phone = "1800 123"
#         @email = "woo_core@bestin.com"
#         @about = "~ An Experience Your Cat Won\'t Forget ~ \n The Purr Seasons is a luxury cat hotel. \n It's so good you'll wish you could stay too! \n\n All our rooms are heated to the purr-fect temperature,\n are fitted with cosy furnishings,\n include lots of cuddle time (if your cat likes that!),\n and are designed to make your cat feel at home. "
#     end

#     # Displays the contact information for the hotel
#     def hotel_info
#         puts HEADER_LINE
#         puts "#{@name.upcase}".center(HEADER_LENGTH)
#         puts HEADER_LINE
#         puts
#         contact_info
#         puts
#         puts HEADER_LINE
#         puts
#         puts "   #{@about}"
#         puts
#         puts HEADER_LINE
#     end

#     # Contact information is seperated from hotel information so that we can use this contact information in different locations if we need it
#     def contact_info
#         puts " Address: #{@address}"
#         puts " Phone No: #{@phone}"
#         puts " Email: #{@email}"
#     end
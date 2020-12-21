# This is the main user class. It will hold the user's details and their orders. In future enhancements we would be able 
# to hold additional information such as contact details. 
class User
    attr_accessor :order, :name

    def initialize(name)
        @name = name
        @order = nil  # order is initialized as nil so that we can use the information in our main application loop, such as 
                        # a customized message upon exit. 
                        # Once a order has been created, the booking object is added to this instance variable.
    end
end
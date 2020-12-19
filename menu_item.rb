class MenuItem
    attr_reader :price, :name

    def initialize(name, price)
        @name = name
        @price = name
    end

    def to.s
        return "#{@name}" +" "*(10 - @name.length)+" ...#{@price}"
    end
    
end
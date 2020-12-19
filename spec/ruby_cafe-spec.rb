require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../main'

describe MenuItem do
    it 'should return the price of an item' do
        name  = "tea"
        price = 5.00
        menu_item = MenuItem.new(name,price)
        expect(menu_item.price).to eq(price)
    end
    it 'should return the price of an item' do
        name  = "tea"
        price = 5.00
        menu_item = MenuItem.new(name,price)
        expect(menu_item.name).to eq(name)
    end
end


describe Menu do
    it 'should be able to get an item price' do
        name  = "tea"
        price = 5.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_price(name)).to eq(price)
    end
    it 'should be able to add an item' do
        name  = "tea"
        price = 5.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_items().length).to be(1)
    end
end

describe Order do 
    it 'should add and item to the order' do
        order = Order.new
        name = "tea"
        quantity = 2
        order.add_item(name, quantity)
        expect(order.get_items().length).to be(1)
    end
    it 'should update an item quantity' do
        order = Order.new
        name = "tea"
        quantity = 2
        quantity_add = 3
        order.add_item(name, quantity)
        order.add_item(name, quantity_add)
        expect(order.get_items()[name]).to be(quantity + quantity_add)
    end
end

describe Cafe do
    it 'should create a cafe with a name' do
        name = "Core 🌳"
        menu_items = {}
        cafe = Cafe.new(name,menu_items)
        expect(cafe.name).to eq(name)
    end
    it 'should create a cafe with a menu' do
        name = "Core 🌳"
        menu_items = {latte: 6.20, tea: 5.00}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.menu.get_items.length).to be(2)
    end
    it 'should add an item to order' do
        name = "Core 🌳"
        menu_items = {latte: 6.20, tea: 5.00}
        cafe = Cafe.new(name, menu_items)
        item = "latte"
        quantity = 1
        cafe.add_to_order(item, quantity)
        expect(cafe.get_order().get_items().length).to be(2)

    end
    
end

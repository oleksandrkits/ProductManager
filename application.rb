require_relative 'product'
require_relative 'vendor'

# Creating new product
bread = Product.new('Bread', 121)
milk = Product.new('Milk', 23)
meat = Product.new('Meat', 87)
cheese = Product.new('Cheese', 11)
cola = Product.new('Cola', 62)
candy = Product.new('Candy', 73)
butter = Product.new('Butter', 112)
tomato = Product.new('Tomato', 43)
onion = Product.new('Onion', 12)
fish = Product.new('Fish', 83)
sauce = Product.new('Sauce', 121)
carrot = Product.new('Carrot', 33)

# Creating new vendor
products = [bread, milk, meat, cheese, cola, candy, butter, tomato, onion, fish, sauce, carrot]
vendor = Vendor.new('Steve', products)

# All products list
puts vendor.products
puts

# All products cheaper than 100
puts vendor.all_products_chp_than(100)

# All pairs cheaper than 100
vendor.show_all_pairs_chp_than(100)
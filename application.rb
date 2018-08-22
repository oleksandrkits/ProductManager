require_relative 'product'
require_relative 'vendor'

# Creating new product
product_bread = Product.new('Bread', 12)
product_milk = Product.new('Milk', 23)

# Creating new vendor
product_list = [product_bread, product_milk]
vendor = Vendor.new('Steve',product_list)

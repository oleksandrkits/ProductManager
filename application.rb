require_relative 'product'
require_relative 'vendor'

# Creating new product
product = Product.new("Bread", 12)

# Creating new vendor
vendor = Vendor.new("Steave",[product])

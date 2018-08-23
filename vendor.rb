class Vendor

  attr_reader :name, :products

  def initialize(name, products)
    @name = name
    @products = Array(products)
  end
end

class Vendor

  attr_reader :name, :products

  def initialize(name, products)
    @name = name
    @products = products
  end

  def all_products_chp_than(val)
    products.select {|pr| pr.price < val}
  end

  # returns all product pairs which price sum is cheaper than val
  def all_pairs_chp_than(val)
    pairs_products = []
    (0...products.length).each do |i|
      if products[i].price < val
        (i+1...products.length).each do |j|
          if products[j].price + products[i].price < val
            pairs_products << [products[j], products[i]]
          end
        end
      end
    end
    return pairs_products
  end

  def show_all_pairs_chp_than(val)
    pairs = all_pairs_chp_than(val)
    (0...pairs.length).each do |i|
      puts
      puts "#{pairs[i][0]}; #{pairs[i][1]}"
    end
  end

  private :all_pairs_chp_than
end

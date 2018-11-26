class Product

	attr_accessor :type, :price, :name, :quantity

	def initialize(name, quantity, type, price)
    @name = name
    @quantity = quantity
    @type = type
		@price = price
	end
  def purchase
    puts "How many would you like to purchase?"
    amount = gets.chomp.to_i
    if amount <= @quantity
      puts "That'll be #{@price * amount}"
      @quantity -= amount
      puts "The new quantity is #{@quantity}"
    else
      puts "Sorry we only have #{@quantity}"
    end
  end
end

my_product = Product.new("iphone", 5, "Electronics", 30)
my_product.purchase

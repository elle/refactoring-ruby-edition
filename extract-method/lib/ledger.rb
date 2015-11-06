# 1. Extract method print_banner
# 2. Extract method print_details and pass it local variables
# 3. Reassigning a Local Variable - outstanding
# 4. Use the inject Collection Closure Method (or reduce)
# 5. Replace Temp with Query
class Ledger
  attr_reader :name, :orders

  def initialize(name, orders = [])
    @name = name
    @orders = orders
  end

  def print_owing
    print_banner
    print_details
  end

  private

  def print_banner
    puts "*************************"
    puts "***** Customer Owes *****"
    puts "*************************"
  end

  def print_details
    puts "name: #{name}"
    puts "amount: #{outstanding}"
  end

  def outstanding
    orders.map(&:amount).reduce(0.0, :+)
  end
end

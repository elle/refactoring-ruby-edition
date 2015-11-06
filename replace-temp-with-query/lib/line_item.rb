# 1. Extract the right-hand side of the assignment into a method
#    Initially mark the method as private.
#    Ensure the extracted method is free of side effects—that is,
#    it does not modify any object.
#    If it is not free of side effects, use Separate Query from Modifier.
# 2. Test
# 3. Inline Temp on the temp
class LineItem
  def initialize(quantity, price)
    @quantity = quantity
    @price    = price
  end

  def trade_price
    base_price * discount_factor
  end

  private

  def base_price
    @quantity * @price
  end

  def discount_factor
    if base_price > 1000
      0.95
    else
      0.98
    end
  end
end

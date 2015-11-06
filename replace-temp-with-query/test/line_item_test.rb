require_relative "../../test_helper"
require_relative "../lib/line_item"

describe LineItem do
  describe "#trade_price" do
    # if this was real code, missing test cases for
    # numbers cannot be zero or negative
    context "when quantity or price are low" do
      it "calculates trade_price" do
        line_item = LineItem.new(1, 1)

        assert_equal 0.98, line_item.trade_price
      end
    end

    context "when quantity or price are high" do
      it "calculates trade_price" do
        line_item = LineItem.new(100, 200)

        assert_equal 19000.0, line_item.trade_price
      end
    end
  end
end

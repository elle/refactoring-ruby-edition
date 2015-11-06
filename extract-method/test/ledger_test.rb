require_relative "../../test_helper"
require_relative "../lib/ledger"
require "ostruct"

describe Ledger do
  it "is initialized with name" do
    ledger = Ledger.new("John")

    assert_equal "John", ledger.name
  end

  it "defaults to empty orders array" do
    ledger = Ledger.new("John")

    assert_equal [], ledger.orders
  end

  it "prints outstanding balance with no orders" do
    ledger = Ledger.new("John")

    assert_output(printout(0.0)) { ledger.print_owing }
  end

  it "prints outstanding balance with orders" do
    order = OpenStruct.new(amount: 5)
    ledger = Ledger.new("John", [order])

    assert_output(printout(5.0)) { ledger.print_owing }
  end

  private

  def printout(amount)
<<EOS
*************************
***** Customer Owes *****
*************************
name: John
amount: #{amount}
EOS
  end
end

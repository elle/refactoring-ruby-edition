require "minitest/autorun"
require "minitest/pride"

require "awesome_print"

require "minitest/reporters"
Minitest::Reporters.use!
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

class MiniTest::Spec
  def show(object, label=nil)
    ap "#{label}:" if label
    ap object
  end

  class << self
    alias context describe
  end
end

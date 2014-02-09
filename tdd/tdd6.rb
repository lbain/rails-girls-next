def roman(n)
  result = ""

  while n >= 5
    n -= 5
    result += "V"
  end

  while n >= 1
    n -= 1
    result += "I"
  end

  return result
end

require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end

  it "converts the number 2 to the string II" do
    roman(2).must_equal "II"
  end

  it "converts the number 6 to the string VI" do
    roman(6).must_equal "VI"
  end
end

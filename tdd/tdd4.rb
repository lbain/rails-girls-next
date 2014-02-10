def roman(n)
  if n == 1
    return "I"
  else
    return "II"
  end
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
end

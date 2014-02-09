def roman(n)
  roman_digit_values = [
    [ "M", 1000 ],
    ["CM",  900 ],
    [ "D",  500 ],
    [ "C",  100 ],
    ["XC",   90 ],
    [ "L",   50 ],
    ["XL",   40 ],
    [ "X",   10 ],
    ["IX",    9 ],
    [ "V",    5 ],
    ["IV",    4 ],
    [ "I",    1 ],
  ]
  result = ""
  while n > 0
    digit, value = roman_digit_values.find{|d, v| n >= v }
    n -= value
    result += digit
  end
  return result
end

require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  [
    [1, "I"],
    [2, "II"],
    [3, "III"],
    [4, "IV"],
    [5, "V"],
    [10, "X"],
    [11, "XI"],
    [14, "XIV"],
    [20, "XX"],
    [890, "DCCCXC"],
  ].each do |input, expected|
    it "should convert the number #{input} to #{expected}" do
      roman(input).must_equal expected
    end
  end
end

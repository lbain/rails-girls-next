# TDD Exercise

This exercise was run for me by a great guy named Steve Hardisty when we both
worked at REA Pty Ltd. It is intended as an exercise to teach you what we're
talking about when we say Test Driven Development. It also involves pair (or in
our case group) programming.

00:00:00 - Briefing
----------------------------------------------------------------------

The mentor explains the following to everybody present:

- How Roman numerals work: [http://www.onlineconversion.com/roman_numerals_advanced.htm]([reference])
- We are going to split into **groups of 3**, each with a computer.
- Each group will have a **hot seat** with laptop, keyboard and Sublime Text.
- The mentor provides the **initial code** (below).
- Within each group, everybody **rotates chairs** so the next person is at the keyboard, each time:
  - A new test is written, or
  - A test goes from failing to passing.

00:10:00 - Initial Code
----------------------------------------------------------------------

The mentor types this out:

```ruby
def roman(n)
  return "?"
end

require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end
end
```

The mentor helps the students run the test. e.g. Ctrl-B in Sublime Text or
typing the following at the prompt:

```
ruby roman.rb
```

Outputs:

```plain
roman#test_0001_converts the number 1 to the string I [tdd1.rb:11]:
Expected: "I"
  Actual: "?"

1 tests, 1 assertions, 1 failures, 0 errors, 0 skips
```

The next person has to make this test pass. They may do this however they see
fit, even just an extra if statement. In fact, that's encouraged, to put the
pressure on the person writing the test to try harder to break it.

00:12:00 - Initial Test Passing
----------------------------------------------------------------------

Somebody new changes the code to this:

```ruby
def roman(n)
  return "I"
end

require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end
end
```

And run the tests to observe:

```
1 tests, 1 assertions, 0 failures, 0 errors, 0 skips
```

00:14:00 - One Pass, One Fail
----------------------------------------------------------------------

Somebody else writes a new test. Most likely:

```ruby
def roman(n)
  return "I"
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
```

Which outputs:

```
roman#test_0002_converts the number 2 to the string II [tdd3.rb:15]:
Expected: "II"
  Actual: "I"

2 tests, 2 assertions, 1 failures, 0 errors, 0 skips
```

00:16:00 - Two Pass
----------------------------------------------------------------------

Somebody else updates the code:

```ruby
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
```

Which outputs:

```
2 tests, 2 assertions, 0 failures, 0 errors, 0 skips
```

00:18:00 - Two Pass, One Fail
----------------------------------------------------------------------

How can we break this? Perhaps the next test is:

```ruby
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

  it "converts the number 6 to the string VI" do
    roman(6).must_equal "VI"
  end
end
```

Which outputs:

```
roman#test_0003_converts the number 6 to the string VI [tdd5.rb:23]:
Expected: "VI"
  Actual: "II"

3 tests, 3 assertions, 1 failures, 0 errors, 0 skips
```

Students should figure this out amongst themselves. Each
person who writes a test has the job of trying to break what the last person
wrote. The mentor should not have to give anything away or challenge them -
that should come from each other. The product should be the product of this
back and forth tension.

00:25:00 - Discuss the Algorithm
----------------------------------------------------------------------

It will become repetitive - another test, another if statement clause. At this
point we will pause, all stand in a circle and discuss how we are going to go
about programming this so that it is not an enormous if statement. Hopefully we
have a whiteboard or similar but if not, waving hands will be a poor man's
substitute.

Essentially we want to introduce loops to deal with the repetition. Let's try
the most basic version of this loop.

If everybody looks really stuck, the mentor may write this on a whiteboard or similar:

```ruby
  while n >= 5
    n -= 5
    result += "V"
  end
```

```ruby
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
```

00:35:00 - Subtractive Digits
----------------------------------------------------------------------

There may be corner cases and issues that people raise in order to try to break the function. Those can be covered by more guard style code. Eventually this case will arise:

```ruby
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

  it "converts the number 4 to the string IV" do
    roman(4).must_equal "IV"
  end
end
```

Which outputs:

```
 1) Failure:
roman#test_0004_converts the number 4 to the string IV [tdd7.rb:35]:
Expected: "IV"
  Actual: "IIII"
```

At this point we may have competing ideas about how to solve this situation.
They may all be valid. We may close the computer and discuss how we think we
can solve the problem, before re-approaching it. We may delete the function
entirely and re-write it from scratch with the same tests and a new approach.

00:45:00 - Hints and Solutions
----------------------------------------------------------------------

If nobody has any clue about how to solve this problem in the general case, the
mentor can provide a few hints:

- Would it be easier if we could treat "IV" and "XC" as single letters?
- What would their values be?
- Can we use the same code that we used for "I" for "IV" but with different values?

There are two ways I have seen people solve this tricky Roman numerals case. They are presented here for reference to the mentor:

Iterative solution:

```ruby
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
```

Recursive solution:

```ruby
ROMAN_DIGIT_VALUES = [
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

def roman(n)
  if result = ROMAN_DIGIT_VALUES.find{|d, v| n >= v }
    result.first + roman(n - result.last)
  else
    ''
  end
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
```

00:50:00 - Discussion and Reflection
----------------------------------------------------------------------

- We will stand up and move away from computers to discuss and reflect.
- Ask the group the following questions for discussion:
  - Would it have been more or less stressful without tests?
  - Did having tests make you feel more confident?
  - Would you feel confident tidying up the code without tests to check it
    still worked?
  - How would you feel confident that it works without the tests? Would you
    manually test it somehow?
  - Would you enjoy working in this TDD way every day?


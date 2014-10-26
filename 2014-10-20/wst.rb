#Counting power

def powers(list)
  2 ** list.length
end

# Test.assert_equals(1, powers([])
# Test.assert_equals(2, powers(([1]))
# Test.assert_equals(4, powers([1,2]))
# Test.assert_equals(16, powers([1,2,3,4]))


#Digitize

def digitize(n)
  n.to_s.chars.map &:to_i
end

# Test.assert_equals(digitize(123), [1,2,3])
# Test.assert_equals(digitize(1), [1])
# Test.assert_equals(digitize(8675309), [8,6,7,5,3,0,9])

# Sum of Digits

def digital_root(n)
  sum = n.to_s.chars.reduce(0){|result, item| result += item.to_i}
  sum.to_s.length > 1 ? digital_root(sum) : sum
end

# Test.assert_equals( digital_root(16), 7 )
# Test.assert_equals( digital_root(164), 2 )



#Validate Credit Card Number
def validate(n)
  n.to_s.chars.reverse.map.with_index do |item, index|
    index % 2 == 1 ? (item.to_i * 2 > 9 ? item.to_i * 2 - 9 : item.to_i * 2) : item.to_i
  end.reduce(0){|result, item| result +=  item} % 10 == 0
end

# Test.assert_equals( validate(891), false )

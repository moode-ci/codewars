#Remove Duplicates
def unique(integers)
  a = []
  integers = integers.reverse
  integers.length.times do
    integer = integers.pop
    a.push(integer) unless a.include?(integer)
  end
  a
end
#为什么要reverse一下？


#Change Machine
def change(cents)
  [25, 10, 5, 1].map.with_object({}) {|cent, hash|
    hash[cent] = cents > 0 ? cents%cent: 0
    cents -= cent * hash[cent]}
end

# Test.assert_equals(change(31),{ 25 => 1, 10 => 0, 5 => 1, 1 => 1 })
# Test.assert_equals(change(0),{ 25 => 0, 10 => 0, 5 => 0, 1 => 0 })
# Test.assert_equals(change(-10),{ 25 => 0, 10 => 0, 5 => 0, 1 => 0 })

def break_chocolate(n, m)
  n == 0 || m == 0 ? 0 : n * m - 1
end


def find_suspect(*numbers)
  num = [*numbers]
  hash = num.uniq.map.with_object({}) {|str,hash|  hash[str] = num.select{|n| n == str}.length}
  min = hash.values.min
  if hash.values.select{|a| a == min}.length == 1
    hash.keys[hash.values.index(min)]
  end
end

# Test.assert_equals(3, find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4))
# Test.assert_equals(nil, find_suspect(1, 1, 2, 2))
# Test.assert_equals(1, find_suspect(1, 1, 2, 2, 2))
# Test.assert_equals(nil, find_suspect())

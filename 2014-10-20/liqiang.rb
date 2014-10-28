# Counting power sets

def powers(list)
  2 ** list.length
end

# Digitize

def digitize(n)
  n.to_s.chars.map(&:to_i)
end

# Sum of Digits / Digital Root

def digital_root(n)
  count = n.to_s.chars.map(&:to_i).reduce(:+)
  count > 9 ? digital_root(count) : count
end

# Validate Credit Card Number

def validate(n)
  arr = n.to_s.chars.reverse.map.with_index{|i, index| (index % 2 == 1) ? i.to_i*2 : i.to_i}.reverse
  arr.map{|i|  i > 9 ? i-=9 : i }.reduce(0,&:+) % 10 == 0
end


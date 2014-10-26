Counting power sets

def powers(list)
  2**list.length
end

Digitize

def digitize(n)
  n.to_s.split('').map{|i| i.to_i}
end

Sum of Digits / Digital Root

def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.chars.reduce(0){|sum, item| sum + item.to_i})
end

Validate Credit Card Number

def validate(n)
  n.to_s.chars.reverse.map.with_index {|item, index|
    index % 2 == 1 ? (item.to_i > 4 ? item.to_i * 2 - 9 : item.to_i * 2) : item.to_i
  }.reduce(:+) % 10 == 0
end
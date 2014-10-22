初级1.Counting power sets
def powers(list)
  return 2 ** (list.length)
end


初级2.Digitize
def digitize(n)
  n.to_s.split('').map{ |s| s.to_i }
end

中级Sum of Digits / Digital Root
def digital_root(n)
  res = n.to_s.chars.reduce(0){ |result, item| result + item.to_i}
  res > 10 ? digital_root(res) : res
end

高级Validate Credit Card Number
def validate(n)
  res = n.to_s.chars.reverse.map.with_index do |item, index|
    index%2 == 1 ? (item.to_i > 4 ? item.to_i * 2 - 9 : item.to_i * 2) : item.to_i
  end
  res.reduce(0){|result, item| result + item} % 10 == 0 ? true : false
end
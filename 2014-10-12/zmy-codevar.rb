A初级一
def unique(integers)
  array = []
  integers.each do |integer|
    array << integer unless array.include?(integer)
  end
  array
end

A初级二
def break_chocolate(m, n)
  (m > 0 && n > 0) ? m * n - 1 : 0
end

B中级
def change(cents)
  keys = [25,10,5,1]
  vals = []
  a = cents/25
  vals.push(a)
  b = cents%25/10
  vals.push(b)
  c = cents%25%10/5
  vals.push(c)
  d = cents%25%10%5
  vals.push(d)
  result = [keys,vals].transpose
  Hash[*result.flatten]
end

C高级
def find_suspect(*numbers)
  counts = []
  numbers.uniq.each do |num|
    count = numbers.count(num)
    counts.push(count)
  end
  counts.sort.first != counts.sort[1] ? numbers.uniq.at(counts.index(counts.min)) : nil
end
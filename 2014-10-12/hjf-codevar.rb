
初级1Remove Duplicates
def unique(integers)
  result = []
  integers.select do |int|
    result.push(int) unless result.include?(int)
  end
end

初级2Breaking chocolate problem
def break_chocolate(n, m)
  (n == 0 || m == 0) ? 0 : n * m - 1
end

中级Change Machine
def change(cents)
  result = {}
  [25, 10, 5, 1].each do |i|
    result[i] = cents / i < 0 ? 0 : cents / i
    cents -= i * (cents / i) if result[i] > 0
  end
  result
end

高级Sherlock on numbers
def find_suspect(*numbers)
  if numbers != []
    n = numbers.group_by{ |number| number}.sort_by {|k, v| v.length}
    n[1] != nil  && n.first[1].length == n[1][1].length ? nil : n.first[0]
  else
    nil
  end
end
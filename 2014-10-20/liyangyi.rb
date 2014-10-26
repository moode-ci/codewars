# A初级：
# Counting power sets(http://www.codewars.com/kata/counting-power-sets/ruby)
def powers(list)
  2**list.size
end
# Digitize(http://www.codewars.com/kata/digitize/ruby)
def digitize(n)
  n.to_s.split('').map{|item| item.to_i}
end

# B中级:
# Sum of Digits / Digital Root
def digital_root(n)
  result = n
  until result<10
    result = result.to_s.split('').map{|item| item.to_i}.inject(0){|start, number| start+number}
  end
  result
end

# C高级:
# Validate Credit Card Number(http://www.codewars.com/kata/validate-credit-card-number/ruby)
def validate(n)
  if n.to_s.length <= 16
    n_to_arr = n.to_s.chars.map{|str_num| str_num.to_i}
    n_arr_double = n_to_arr.map.with_index {|value, index| ((n_to_arr.length.even? && index.even?) || (n_to_arr.length.odd? && index.odd?)) ? value * 2 : value}
    n_arr_less_9 = n_arr_double.map{|num| num > 9 ? num - 9 : num}
    n_arr_sum = n_arr_less_9.reduce(0){|sum, num| sum + num}
    n_arr_sum % 10 == 0
  else
    false
  end
end
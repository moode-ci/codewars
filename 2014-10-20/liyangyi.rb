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
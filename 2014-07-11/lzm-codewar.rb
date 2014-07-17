(1)Short Long Short
def solution(a, b)
  a.length < b. length ? a + b + a : b + a + b 
end
(2)Name Array Capping
def cap_me arr
  arr.map do |a|
    a.capitalize()
  end
end
(3)Palindromes Below
class Fixnum 
  def palindrome_below num
    (1..self).select{|f| f.to_s(num) == f.to_s(num).reverse}
  end  
end
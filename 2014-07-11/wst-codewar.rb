1.short long short:

def solution(a, b)
  a.size > b.size ? b+a+b : a+b+a
end

2.name array capping

def cap_me(names)
  names.map do |name|
    name.capitalize
  end
end

3.palindromes below(李强教的)

class Fixnum
  def palindrome_below base
  (1..self-1).select{|item| item.to_s(base) == item.to_s(base).reverse }
  end
end

4.int32 to IPV4

def int32_to_ip(int32)
  binary = int32.to_s(2)
  binary = binary.size < 32 ? ('0' * (32-binary.size) + binary) : binary
  binary = binary.match(/(\d{8})(\d{8})(\d{8})(\d{8})/)
  binary[1].to_i(2).to_s  + '.' + binary[2].to_i(2).to_s + '.' + binary[3].to_i(2).to_s + '.' + binary[4].to_i(2).to_s
end

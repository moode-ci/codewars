#author: liyangyi

#Short Long Short
def solution(a, b)
  a.length < b.length ? a+b+a : b+a+b
end

#Name Array Capping
def cap_me(names)
  cap_names = []
  names.each do |name|
    cap_names << name.capitalize
  end
  cap_names
end

#Palindromes Below
def palidrome_below(base)
  index = 1
  p_arr = []
  while index < self do
    index_base = index.to_s(base)
    p_arr << index if index_base == index_base.reverse
    index += 1
  end
  return p_arr
end


#int32 to IPv4
def int32_to_ip(int32)
  int32_max = 2**32 - 1
  if int32 <= int32_max
    int32_to_binary = int32.to_s(2)
    str_length = int32_to_binary.length%8 == 0 ? int32_to_binary.length/8 : int32_to_binary.length/8 + 1
    ip_arr = []
    index = 0
    while index < str_length do
      sub_length = int32_to_binary.length % 8 != 0 && index == int32_to_binary.length / 8 ? int32_to_binary.length % 8 : 8
      ip_arr << Integer("0b" + int32_to_binary[index * 8, sub_length]).to_s
      index += 1
    end

    while 4 - index > 0 do
      ip_arr << '0'
      index += 1
    end

    ip_arr.join('.')
  end
end
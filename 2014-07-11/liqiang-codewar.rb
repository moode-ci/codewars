class Prictice0713

  def cap_me names
      names.map { |name| name.to_s.capitalize if name.present?}
	    end

  def int32_to_ip int_number
    return '数字超出正常范围' if int_number > 4294967295
    int_number.to_s(2).rjust(32, '0').scan(/\d{8}/).map{|item| Integer('0b' + item) }.join('.')
  end

  def solution str_1, str_2
    str_1.length > str_2.length ? str_2 + str_1 + str_2 : str_1 + str_2 + str_1
  end

end

class Fixnum

  def palindrome_below base
    (1..self-1).select{|item| item.to_s(base) == item.to_s(base).reverse }
  end

end

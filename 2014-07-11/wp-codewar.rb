def solution(a, b)
  a.size > b.size ? b + a + b : a + b + a  
end

def cap_me(names_arr)
  names_arr.map do |name|
    "#{name[0].upcase}#{name[1..-1].downcase}"
  end
end
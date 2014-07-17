初级：Short Long Short：
function solution(a, b){
return a.length > b.length ? b + a + b : a + b + a
}

Name Array Capping：
function capMe(names) {
  var s = []
  for(var i = 0;i < names.length;i++){
    s.push(names[i].substr(0,1).toUpperCase() + names[i].substr(1).toLowerCase());
  }
  return s;
}
：

中级：class Fixnum：
  def  palindrome_below(b)
     num = []
     (1..self-1).each do |n|
       n.to_s(b) == n.to_s(b).reverse() ? num.push(n) : ''
     end
     return num
  end
end

高级：int32 to IPv4
def int32_to_ip(int32)
  number_array = int32.to_s(2).scan(/\d{8}/).map do |n|
    Integer('0b' + n)
  end  
  number_array.join('.')
end

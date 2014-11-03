A初级：
Sum of all arguments

def sum(*n)
  n.reduce(:+)
end

Power of two

def power_of_two?(x)
  Math.log(x) / Math.log(2) % 1 == 0
end

B中级:
Who has the most money?

class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end
end
def most_money(students)
  hash=students.each_with_object({}) {|student, hsh| hsh[student.name]=student.fives*5+student.tens*10+student.twenties*20}
  w = hash.select{|k,v|v==hash.values.max}
  w.length==1 ? w.keys[0] : 'all'
end

C高级:
Palindrome for your Dome

def palindrome(string)
 s = string.gsub(/\W/,'').downcase.chars
 s.reduce([]){|s, c| s.unshift(c)} == s
end


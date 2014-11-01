#Sum of all arguments
sum(*numbers)
 numbers.reduce(:+)
end

# Power of two
def power_of_two?(x)
  if x > 2
    x % 2 == 0 ? power_of_two?(x/2) : false
  else
    x % 2 == 0
  end
end

#Who has the most money
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

def self.most_money(students)
  students_money = students.map{|student| {name: student.name, money: student.fives*5 + student.tens*10 + student.twenties*20}}
  students.length != 1 && students_money.uniq{|s| s[:money]}.length == 1 ? 'all' : students_money.max_by{|v| v[:money]}[:name]
end

def palindrome(string)
  s_without_special_chars = string.chars.select{|c| /\w/.match(c)}
  s = s_without_special_chars.join().upcase
  s_reverse = []
  s_size = s.length
  s_without_special_chars.each_with_index{|_, index| s_reverse << s_without_special_chars[s_size-1-index]}
  s_reverse.join().upcase == s
end

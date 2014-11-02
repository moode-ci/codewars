初级1Sum of all arguments
def sum(*args)
  args.reduce{ |result, item| result + item }
end

初级2Power of two
def power_of_two?(x)
  x & (x - 1) == 0
end

中级Who has the most money?
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
  item = {}
  students.each {|student| item[student.name] = student.fives*5 + student.tens*10 + student.twenties*20}
  result = item.sort_by{|key, value| value}
  result.select{|res| res[1] == result.last[1]}.length == 1 ? result.last[0] : "all"
end


高级 Palindrome for your Dome
def palindrome(string)
  res = string.gsub(/\W/, '').downcase
  res=='' ? true : res[0] == res[res.length-1] ? palindrome(res[1..res.length-2]) : false
end

#Sum of all arguments
def sum(*n)
  [*n].reduce(0){|res, item| res + item}
end


#Power of two
def power_of_two?(x)
  Math.log2(x) == Math.log2(x).to_i
end


#Who has the most money?
def most_money(students)
  stu = students.map{|item| {name: item.name, mon: (item.fives*5+item.tens*10+item.twenties*20)}}
  stu.max_by{|stu| stu[:mon]} == stu.reverse.max_by{|stu| stu[:mon]} ? stu.max_by{|stu| stu[:mon]}[:name] : 'all'
end

#Palindrome for your Dome
def palindrome(string)
  array = []
  str1= string.gsub(/W/, '').upcase
  str = str1.chars
  str.length.times { array.push(str.pop) }
  str1 == array.join('')
end

# Sum of all arguments

def sum *numbers
	numbers.reduce 0, &:+	
end

# Power of two

def power_of_two?(x)
<<<<<<< HEAD
  a.chars.reduce(&:+) ==1
=======
  x.to_s(2).chars.map(&:to_i).reduce(&:+) ==1
>>>>>>> liqiang
end

# Who has the most money?

class Student
 
  def money_count
    [:fives, :tens, :twenties].each_with_index.reduce(0){|r, i| r += self.send(i.first)<<i.last} * 5 
  end
  
end

def most_money(students)
  name = students.max_by(&:money_count).name
  name == students.reverse.max_by(&:money_count).name ? name : 'all'
end

# Palindrome for your Dome

def palindrome(string)
  arr = string.scan(/\w|@/).join('').downcase.chars
  arr.length == 1 or (arr.length>>1).times.map{|i| arr[i] == arr[-(i+1)]}.reduce(:&)
end
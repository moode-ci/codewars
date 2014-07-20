初级 Welcome to the City
def say_hello(name, city, state)
  "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

Sleigh Authentication
class Sleigh
  def authenticate(name, password)
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end

中级 Greet Me
def greet(name)
  "Hello #{name.capitalize()}!"
end

高级 Given an array of numbers, which are perfect squares?
def get_squares(array)
  array.sort.select do |num|
    Math.sqrt(num).to_i == Math.sqrt(num)
  end.uniq
end
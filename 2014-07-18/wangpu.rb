def say_hello(name, city, state)
  # Your Code Here
  "Hello, #{name.join(' ')}! Welcome to #{city}, #{state}!"
end

class Sleigh
  def authenticate(name, password)
    # TODO
    name == "Santa Claus" && password == "Ho Ho Ho!"
  end
end

def greet(name)
  "Hello #{name.capitalize}!"
end

def get_squares(array)
  array.select  { |item| Math.sqrt(item).to_s =~ /^\d+\.0$/ }.uniq.sort
end

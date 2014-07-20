A初级：
Welcome to the City

  def say_hello(name, city, state)
    "Hello, #{name.join(' ')}! Welcome to #{city}, #{state}!"
  end

Sleigh Authentication

  class Sleigh
    def authenticate(name, password)
      name == "Santa Claus" && password == "Ho Ho Ho!"
    end
  end

B中级:
    Greet Me

  def greet(name)
    "Hello #{name.capitalize()}!"
  end

C高级:
    Given an array of numbers, which are perfect squares?

  def get_squares(array)
    array.select {|a| a**(1/2.0) == Integer(a**(1/2.0))}.sort.uniq
  end
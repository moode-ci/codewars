
# 初级

def say_hello(name, city, state)
  "Hello, #{name.join(' ')}! Welcome to #{city}, #{state}!"
end

class Sleigh
  def authenticate(name, password)
    name == 'Santa Claus' && password == 'Ho Ho Ho!'
  end
end

# 中级

def greet(name)
  "Hello #{name.capitalize}!"
end

# 高级

def get_squares(array)
  array.select{|item| (item ** 0.5) % 1 == 0}.uniq.sort
end
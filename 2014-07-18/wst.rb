#A初级：
#Welcome to the City

def say_hello(name, city, state)
  'Hello, ' + name.join(' ') + "#{name.length != 0 ? '! Welcome' : 'Welcome'}" + ' to ' + city + ', ' + state + '!'
end


#Sleigh Authentication

class Sleigh
  def authenticate(name, password)
    name.upcase == 'Santa Claus'.upcase && password.upcase == 'Ho Ho Ho!'.upcase
  end
end

#B中级:
#Greet Me

def greet(name)
  "Hello #{name.capitalize}!"
end

#C高级:
#Given an array of numbers, which are perfect squares?

def get_squares(array)
  array.select{|item| Math.sqrt(item).to_s.match(/.0$/) != nil}.uniq.sort
end


# A初级：
# Welcome to the City
# Sleigh Authentication
def say_hello(name, city, state)
  return 'Hello,' + name.join(' ') + '! Welcome to ' + city + ', ' + state + '!'
end


# B中级:
# Greet Me

def greet(name)
  "Hello #{name.capitalize}!"
end

# C高级:
# Given an array of numbers, which are perfect squares?
def get_squares(array)
  arr = array.to_a.uniq.sort
  results = []
  arr.each do |a|
    results << a if Math.sqrt(a) == Math.sqrt(a).to_i
  end
  results
end
# Remove Duplicates
def unique(integers)
  integers | integers
end

#Breaking chocolate problem

def break_chocolate(n, m)
  n*m > 0 ? n*m -1 : 0
end

#Change Machine

def change(cents)
  [25, 10, 5, 1].reduce({}) do|result, integer|
    value = cents >= 0 ? cents / integer : 0;
    cents -= value * integer;
    result.merge integer => value
  end
end

# Sherlock on numbers

def find_suspect(*numbers)
  min = numbers.min_by{|i| numbers.count i}
  min if min == numbers.reverse.min_by{|i| numbers.count i}
end
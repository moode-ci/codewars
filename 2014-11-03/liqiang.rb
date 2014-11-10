# List Filtering

def filter_list(l)
  l.select { |i| i.is_a? Fixnum }
end

# Simple elevator

def goto(level, button)
	[level, button].one?{|i| !%w(0 1 2 3).include?(i.to_s) } ? 0 : (button.to_i - level)
end

# Sort sentence pseudo-alphabetically

def sort sentence
   h = sentence.scan(/\w+/).sort.group_by{|i| /[a-z]/ =~ i[0]}
   ((h[0] or []) + (h[nil] or []).reverse).join(' ')
end

# Greed is Good

def score( dice )
  m = {1 => 100, 5 => 50}
  (1..6).reduce(0) do|res, i|
    count = dice.count(i)    
    res + count/3 * i * (i==1 ? 1000 : 100) + count%3*(m[i].to_i)
  end
end
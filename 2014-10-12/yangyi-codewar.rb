# A1:Remove Duplicates
def unique(integers)
  integers_group = integers.group_by{|i| i}
  integers_group.keys
end

#A2: Breaking chocolate problem
def break_chocolate(n, m)
  m*n > 0 ? m*n - 1 : 0
end

#B:Change Machine
def change(cents)
  if cents <= 0
    {25 => 0, 10 => 0, 5 => 0, 1 => 0}
  else
    {25 => cents%25, 10 => cents%25%10, 5 => cents%25%10%5, 1 => cents%5}
  end
end

#C:Sherlock on numbers

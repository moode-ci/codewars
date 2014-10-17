# A:Remove Duplicates
def unique(integers)
  integers.uniq
end

# B:Change Machine
def change(cents)
  if cents <= 0
    {25 => 0, 10 => 0, 5 => 0, 1 => 0}
  else
    {25 => cents%25, 10 => cents%25%10, 5 => cents%25%10%5, 1 => cents%5}
  end
end

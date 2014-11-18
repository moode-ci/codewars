def detect_int(*items)
  num = 1
  while items.find {|item| !item.(num)}
    num += 1
  end
  num
end

def compose(f,g)
  ->(*n){f.(g.(*n))}
end

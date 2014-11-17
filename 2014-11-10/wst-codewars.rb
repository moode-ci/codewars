def detect_int(*n)
  a = 1
  b = false
  begin
    n.map {|c| c.call(a)}.include?(false) ? (a += 1) : (b = true)
  end while  b == false
  a
end

def compose(f,g)
  ->(*x){f.(g.(*x))}
end
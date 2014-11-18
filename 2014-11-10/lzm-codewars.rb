Name That Integer

def detect_int(*lambdas)
  lam = 1
  lam += 1 until lambdas.all? {|l| l.(lam)}
  lam
end

Function Composition

def compose(f,g)
  lambda {|*a| f.call(g.call(*a))}
end


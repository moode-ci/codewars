# Name That Integer

def detect_int *blocks
  i = 0;
  begin
    i+=1;
  end while(blocks.find {|block| !block.call(i)})
  i
end

# Function Composition

def compose(l1,l2)
  ->(*args){ l1.(eval "l2.call(#{args.join(',')})") }
end

# Custom attr_accessor

class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}  
  end 
 
  def self.data_accessor(*args)
    args.each do|method|
      define_method method do
        @data[method]
      end
      
      define_method(method.to_s+'=') do |value|
        @data[method] = value
      end
    end

  end

end
